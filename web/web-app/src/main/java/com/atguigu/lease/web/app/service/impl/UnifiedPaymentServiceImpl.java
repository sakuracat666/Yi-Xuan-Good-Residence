package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.*;
import com.atguigu.lease.web.app.mapper.*;
import com.atguigu.lease.web.app.service.UnifiedPaymentService;
import com.atguigu.lease.web.app.service.UserBalanceService;
import com.atguigu.lease.web.app.vo.payment.*;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Objects;
import java.util.Optional;
import java.util.Random;

/**
 * 统一支付服务实现
 * 支持余额支付、微信支付、混合支付及退款
 */
@Service
public class UnifiedPaymentServiceImpl implements UnifiedPaymentService {

  private static final DateTimeFormatter ORDER_NO_FORMATTER = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
  private static final String QR_CODE_SERVICE = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=";

  @Autowired
  private PaymentOrderMapper paymentOrderMapper;

  @Autowired
  private PaymentDetailMapper paymentDetailMapper;

  @Autowired
  private LeaseAgreementMapper leaseAgreementMapper;

  @Autowired
  private RefundRecordMapper refundRecordMapper;

  @Autowired
  private UserInfoMapper userInfoMapper;

  @Autowired
  private UserBalanceService userBalanceService;

  /**
   * 生成商户订单号
   */
  private String generateOrderNo(String prefix) {
    String timePart = LocalDateTime.now().format(ORDER_NO_FORMATTER);
    int randomPart = new Random().nextInt(900000) + 100000;
    return prefix + timePart + randomPart;
  }

  /**
   * 构建模拟微信支付地址
   */
  private String buildMockWechatPayUrl(String orderNo) {
    return "/mock/wechat/pay?orderNo=" + orderNo;
  }

  /**
   * 构建模拟二维码地址
   */
  private String buildMockQrCode(String h5Url) {
    return QR_CODE_SERVICE + URLEncoder.encode(h5Url, StandardCharsets.UTF_8);
  }

  /**
   * 计算订单金额
   */
  private BigDecimal calculateAmount(LeaseAgreement agreement) {
    BigDecimal rent = Optional.ofNullable(agreement.getRent()).orElse(BigDecimal.ZERO);
    BigDecimal deposit = Optional.ofNullable(agreement.getDeposit()).orElse(BigDecimal.ZERO);
    BigDecimal total = rent.add(deposit);
    if (total.compareTo(BigDecimal.ZERO) <= 0) {
      return BigDecimal.ONE;
    }
    return total;
  }

  /**
   * 组装订单标题
   */
  private String buildSubject(LeaseAgreement agreement, String scene) {
    String base = "租约支付-" + Optional.ofNullable(agreement.getName()).orElse("租客");
    if (scene != null && !scene.isBlank()) {
      return base + "-" + scene;
    }
    return base;
  }

  /**
   * 校验当前用户是否允许访问订单
   */
  private void checkAccess(LoginUser loginUser, LeaseAgreement agreement) {
    if (agreement == null) {
      throw new LeaseException(ResultCodeEnum.DATA_ERROR);
    }
    if (!Objects.equals(loginUser.getUsername(), agreement.getPhone())) {
      throw new LeaseException(ResultCodeEnum.ADMIN_ACCESS_FORBIDDEN);
    }
  }

  /**
   * 根据手机号获取用户ID
   */
  private Long getUserIdByPhone(String phone) {
    UserInfo userInfo = userInfoMapper.selectOne(
        new LambdaQueryWrapper<UserInfo>()
            .eq(UserInfo::getPhone, phone)
            .last("LIMIT 1"));
    if (userInfo == null) {
      throw new LeaseException(ResultCodeEnum.DATA_ERROR);
    }
    return userInfo.getId();
  }

  /**
   * 获取支付预览信息
   *
   * @param loginUser        当前登录用户
   * @param leaseAgreementId 租约ID
   * @return 支付预览信息
   */
  @Override
  public PaymentPreviewVo getPaymentPreview(LoginUser loginUser, Long leaseAgreementId) {
    LeaseAgreement agreement = leaseAgreementMapper.selectById(leaseAgreementId);
    checkAccess(loginUser, agreement);

    Long userId = getUserIdByPhone(loginUser.getUsername());
    UserBalanceVo balanceVo = userBalanceService.getUserBalance(userId);
    BigDecimal totalAmount = calculateAmount(agreement);
    BigDecimal userBalance = balanceVo.getBalance();

    PaymentPreviewVo previewVo = new PaymentPreviewVo();
    previewVo.setLeaseAgreementId(leaseAgreementId);
    previewVo.setTotalAmount(totalAmount);
    previewVo.setUserBalance(userBalance);
    previewVo.setCanUseBalance(userBalance.compareTo(BigDecimal.ZERO) > 0);

    // 计算建议支付金额
    if (userBalance.compareTo(totalAmount) >= 0) {
      // 余额充足，可以纯余额支付
      previewVo.setSuggestBalanceAmount(totalAmount);
      previewVo.setSuggestWechatAmount(BigDecimal.ZERO);
      previewVo.setCanFullBalancePay(true);
    } else {
      // 余额不足，需要混合支付
      previewVo.setSuggestBalanceAmount(userBalance);
      previewVo.setSuggestWechatAmount(totalAmount.subtract(userBalance));
      previewVo.setCanFullBalancePay(false);
    }

    return previewVo;
  }

  /**
   * 统一支付接口
   *
   * @param loginUser 当前登录用户
   * @param request   支付请求参数
   * @return 支付响应结果
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public UnifiedPayResponse unifiedPay(LoginUser loginUser, UnifiedPayRequest request) {
    // 1. 校验租约
    LeaseAgreement agreement = leaseAgreementMapper.selectById(request.getLeaseAgreementId());
    checkAccess(loginUser, agreement);

    // 检查是否已支付
    if (agreement.getPaymentStatus() == PaymentStatus.SUCCESS) {
      throw new LeaseException(ResultCodeEnum.REPEAT_SUBMIT);
    }

    // 2. 计算订单金额
    BigDecimal totalAmount = calculateAmount(agreement);
    BigDecimal balanceAmount = Optional.ofNullable(request.getBalanceAmount()).orElse(BigDecimal.ZERO);
    BigDecimal wechatAmount = Optional.ofNullable(request.getWechatAmount()).orElse(BigDecimal.ZERO);

    // 3. 校验支付金额
    validatePaymentAmount(request, totalAmount, balanceAmount, wechatAmount, loginUser);

    // 4. 确定支付方式组合
    PayMethodCombination payMethodCombination = determinePayMethodCombination(request, balanceAmount, wechatAmount);

    // 5. 创建支付订单
    PaymentOrder paymentOrder = createPaymentOrder(agreement, request, totalAmount,
        balanceAmount, wechatAmount, payMethodCombination);

    // 6. 处理余额支付
    Long userId = getUserIdByPhone(loginUser.getUsername());
    boolean balancePaid = false;
    if (Boolean.TRUE.equals(request.getUseBalance()) && balanceAmount.compareTo(BigDecimal.ZERO) > 0) {
      balancePaid = processBalancePayment(userId, paymentOrder, balanceAmount);
    }

    // 7. 构建响应
    UnifiedPayResponse response = buildPayResponse(paymentOrder, balancePaid,
        request.getUseWechat(), wechatAmount);

    // 8. 如果是纯余额支付且已成功，直接完成订单
    if (payMethodCombination == PayMethodCombination.BALANCE_ONLY && balancePaid) {
      completePaymentOrder(paymentOrder, agreement);
      response.setStatus(PaymentStatus.SUCCESS);
      response.setMessage("余额支付成功");
    }

    return response;
  }

  /**
   * 校验支付金额
   */
  private void validatePaymentAmount(UnifiedPayRequest request, BigDecimal totalAmount,
      BigDecimal balanceAmount, BigDecimal wechatAmount,
      LoginUser loginUser) {
    // 至少选择一种支付方式
    if (!Boolean.TRUE.equals(request.getUseBalance()) && !Boolean.TRUE.equals(request.getUseWechat())) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 支付金额之和必须等于订单金额
    BigDecimal payTotal = balanceAmount.add(wechatAmount);
    if (payTotal.compareTo(totalAmount) != 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 如果使用余额，检查余额是否充足
    if (Boolean.TRUE.equals(request.getUseBalance()) && balanceAmount.compareTo(BigDecimal.ZERO) > 0) {
      Long userId = getUserIdByPhone(loginUser.getUsername());
      UserBalanceVo balanceVo = userBalanceService.getUserBalance(userId);
      if (balanceVo.getBalance().compareTo(balanceAmount) < 0) {
        throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
      }
    }
  }

  /**
   * 确定支付方式组合
   */
  private PayMethodCombination determinePayMethodCombination(UnifiedPayRequest request,
      BigDecimal balanceAmount,
      BigDecimal wechatAmount) {
    boolean useBalance = Boolean.TRUE.equals(request.getUseBalance()) && balanceAmount.compareTo(BigDecimal.ZERO) > 0;
    boolean useWechat = Boolean.TRUE.equals(request.getUseWechat()) && wechatAmount.compareTo(BigDecimal.ZERO) > 0;

    if (useBalance && useWechat) {
      return PayMethodCombination.MIXED;
    } else if (useBalance) {
      return PayMethodCombination.BALANCE_ONLY;
    } else if (useWechat) {
      return PayMethodCombination.WECHAT_ONLY;
    } else {
      return PayMethodCombination.NOT_SELECTED;
    }
  }

  /**
   * 创建支付订单
   */
  private PaymentOrder createPaymentOrder(LeaseAgreement agreement, UnifiedPayRequest request,
      BigDecimal totalAmount, BigDecimal balanceAmount,
      BigDecimal wechatAmount, PayMethodCombination payMethodCombination) {
    PaymentOrder paymentOrder = new PaymentOrder();
    paymentOrder.setOrderNo(generateOrderNo("PAY"));
    paymentOrder.setLeaseAgreementId(agreement.getId());
    paymentOrder.setSubject(buildSubject(agreement, request.getScene()));
    paymentOrder.setAmountTotal(totalAmount);
    paymentOrder.setStatus(PaymentStatus.WAITING);
    paymentOrder.setPayChannel("UNIFIED");
    paymentOrder.setPayMethod(payMethodCombination);
    paymentOrder.setBalanceAmount(balanceAmount);
    paymentOrder.setWechatAmount(wechatAmount);
    paymentOrder.setRefundStatus(0);
    paymentOrder.setRefundedAmount(BigDecimal.ZERO);

    // 如果需要微信支付，生成支付链接
    if (wechatAmount.compareTo(BigDecimal.ZERO) > 0) {
      String h5Url = buildMockWechatPayUrl(paymentOrder.getOrderNo());
      paymentOrder.setH5Url(h5Url);
      paymentOrder.setCodeUrl(buildMockQrCode(h5Url));
    }

    paymentOrderMapper.insert(paymentOrder);

    // 更新租约的支付订单ID
    LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
    updateWrapper.eq(LeaseAgreement::getId, agreement.getId())
        .set(LeaseAgreement::getPaymentOrderId, paymentOrder.getId())
        .set(LeaseAgreement::getPaymentStatus, PaymentStatus.WAITING);
    leaseAgreementMapper.update(null, updateWrapper);

    return paymentOrder;
  }

  /**
   * 处理余额支付
   */
  private boolean processBalancePayment(Long userId, PaymentOrder paymentOrder, BigDecimal balanceAmount) {
    try {
      // 扣减余额
      String transactionNo = userBalanceService.deductBalance(
          userId, balanceAmount, paymentOrder.getOrderNo(), "租约支付-余额扣款");

      // 创建余额支付明细
      PaymentDetail balanceDetail = new PaymentDetail();
      balanceDetail.setPaymentOrderId(paymentOrder.getId());
      balanceDetail.setPayMethod(PayMethod.BALANCE);
      balanceDetail.setAmount(balanceAmount);
      balanceDetail.setStatus(PaymentStatus.SUCCESS);
      balanceDetail.setTransactionNo(transactionNo);
      balanceDetail.setPayTime(new Date());
      balanceDetail.setRefundAmount(BigDecimal.ZERO);
      paymentDetailMapper.insert(balanceDetail);

      return true;
    } catch (Exception e) {
      // 余额扣款失败
      return false;
    }
  }

  /**
   * 构建支付响应
   */
  private UnifiedPayResponse buildPayResponse(PaymentOrder paymentOrder, boolean balancePaid,
      Boolean useWechat, BigDecimal wechatAmount) {
    UnifiedPayResponse response = new UnifiedPayResponse();
    response.setPaymentOrderId(paymentOrder.getId());
    response.setOrderNo(paymentOrder.getOrderNo());
    response.setAmountTotal(paymentOrder.getAmountTotal());
    response.setBalanceAmount(paymentOrder.getBalanceAmount());
    response.setWechatAmount(paymentOrder.getWechatAmount());
    response.setPayMethod(paymentOrder.getPayMethod());
    response.setStatus(paymentOrder.getStatus());
    response.setBalancePaid(balancePaid);

    // 判断是否需要微信支付
    boolean needWechatPay = Boolean.TRUE.equals(useWechat) && wechatAmount.compareTo(BigDecimal.ZERO) > 0;
    response.setNeedWechatPay(needWechatPay);

    if (needWechatPay) {
      response.setWechatH5Url(paymentOrder.getH5Url());
      response.setWechatCodeUrl(paymentOrder.getCodeUrl());

      if (balancePaid) {
        response.setMessage("余额已扣款成功，请继续完成微信支付");
      } else {
        response.setMessage("请完成微信支付");
      }
    }

    // 如果需要微信支付，创建微信支付明细（待支付状态）
    if (needWechatPay) {
      PaymentDetail wechatDetail = new PaymentDetail();
      wechatDetail.setPaymentOrderId(paymentOrder.getId());
      wechatDetail.setPayMethod(PayMethod.WECHAT);
      wechatDetail.setAmount(wechatAmount);
      wechatDetail.setStatus(PaymentStatus.WAITING);
      wechatDetail.setRefundAmount(BigDecimal.ZERO);
      paymentDetailMapper.insert(wechatDetail);
    }

    return response;
  }

  /**
   * 完成支付订单（纯余额支付成功时调用）
   */
  private void completePaymentOrder(PaymentOrder paymentOrder, LeaseAgreement agreement) {
    // 更新支付订单状态
    paymentOrder.setStatus(PaymentStatus.SUCCESS);
    paymentOrder.setSuccessTime(new Date());
    paymentOrderMapper.updateById(paymentOrder);

    // 更新租约状态
    LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
    updateWrapper.eq(LeaseAgreement::getId, agreement.getId())
        .set(LeaseAgreement::getPaymentStatus, PaymentStatus.SUCCESS)
        .set(LeaseAgreement::getStatus, LeaseStatus.SIGNED);
    leaseAgreementMapper.update(null, updateWrapper);
  }

  /**
   * 微信支付回调处理
   *
   * @param orderNo 商户订单号
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public void handleWechatPayCallback(String orderNo) {
    PaymentOrder paymentOrder = paymentOrderMapper.selectOne(
        new LambdaQueryWrapper<PaymentOrder>()
            .eq(PaymentOrder::getOrderNo, orderNo));
    if (paymentOrder == null) {
      throw new LeaseException(ResultCodeEnum.DATA_ERROR);
    }

    // 如果订单已支付，直接返回
    if (paymentOrder.getStatus() == PaymentStatus.SUCCESS) {
      return;
    }

    // 更新微信支付明细状态
    LambdaUpdateWrapper<PaymentDetail> detailUpdateWrapper = new LambdaUpdateWrapper<>();
    detailUpdateWrapper.eq(PaymentDetail::getPaymentOrderId, paymentOrder.getId())
        .eq(PaymentDetail::getPayMethod, PayMethod.WECHAT)
        .set(PaymentDetail::getStatus, PaymentStatus.SUCCESS)
        .set(PaymentDetail::getPayTime, new Date())
        .set(PaymentDetail::getTransactionNo, generateOrderNo("WX"));
    paymentDetailMapper.update(null, detailUpdateWrapper);

    // 更新支付订单状态
    paymentOrder.setStatus(PaymentStatus.SUCCESS);
    paymentOrder.setSuccessTime(new Date());
    paymentOrderMapper.updateById(paymentOrder);

    // 更新租约状态
    LambdaUpdateWrapper<LeaseAgreement> agreementUpdateWrapper = new LambdaUpdateWrapper<>();
    agreementUpdateWrapper.eq(LeaseAgreement::getId, paymentOrder.getLeaseAgreementId())
        .set(LeaseAgreement::getPaymentStatus, PaymentStatus.SUCCESS)
        .set(LeaseAgreement::getStatus, LeaseStatus.SIGNED);
    leaseAgreementMapper.update(null, agreementUpdateWrapper);
  }

  /**
   * 申请退款
   *
   * @param loginUser 当前登录用户
   * @param request   退款请求参数
   * @return 退款响应结果
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public RefundResponse applyRefund(LoginUser loginUser, RefundRequest request) {
    // 1. 校验租约
    LeaseAgreement agreement = leaseAgreementMapper.selectById(request.getLeaseAgreementId());
    checkAccess(loginUser, agreement);

    // 检查是否已支付
    if (agreement.getPaymentStatus() != PaymentStatus.SUCCESS) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 2. 获取支付订单
    PaymentOrder paymentOrder = paymentOrderMapper.selectById(agreement.getPaymentOrderId());
    if (paymentOrder == null) {
      throw new LeaseException(ResultCodeEnum.DATA_ERROR);
    }

    // 检查是否已退款
    if (paymentOrder.getRefundStatus() != null && paymentOrder.getRefundStatus() == 2) {
      throw new LeaseException(ResultCodeEnum.REPEAT_SUBMIT);
    }

    // 3. 获取支付明细
    java.util.List<PaymentDetail> paymentDetails = paymentDetailMapper.selectByPaymentOrderId(paymentOrder.getId());

    // 4. 计算退款金额
    BigDecimal balanceRefund = BigDecimal.ZERO;
    BigDecimal wechatRefund = BigDecimal.ZERO;

    for (PaymentDetail detail : paymentDetails) {
      if (detail.getStatus() == PaymentStatus.SUCCESS) {
        BigDecimal refundableAmount = detail.getAmount().subtract(
            Optional.ofNullable(detail.getRefundAmount()).orElse(BigDecimal.ZERO));
        if (detail.getPayMethod() == PayMethod.BALANCE) {
          balanceRefund = balanceRefund.add(refundableAmount);
        } else if (detail.getPayMethod() == PayMethod.WECHAT) {
          wechatRefund = wechatRefund.add(refundableAmount);
        }
      }
    }

    BigDecimal totalRefund = balanceRefund.add(wechatRefund);
    if (totalRefund.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 5. 创建退款记录
    RefundRecord refundRecord = new RefundRecord();
    refundRecord.setRefundNo(generateOrderNo("REF"));
    refundRecord.setPaymentOrderId(paymentOrder.getId());
    refundRecord.setLeaseAgreementId(agreement.getId());
    refundRecord.setRefundAmount(totalRefund);
    refundRecord.setBalanceRefund(balanceRefund);
    refundRecord.setWechatRefund(wechatRefund);
    refundRecord.setStatus(RefundStatus.PROCESSING);
    refundRecord.setReason(request.getReason());
    refundRecordMapper.insert(refundRecord);

    // 6. 处理余额退款
    Long userId = getUserIdByPhone(loginUser.getUsername());
    if (balanceRefund.compareTo(BigDecimal.ZERO) > 0) {
      userBalanceService.addBalance(userId, balanceRefund, paymentOrder.getOrderNo(), "订单退款-余额返还");

      // 更新余额支付明细
      for (PaymentDetail detail : paymentDetails) {
        if (detail.getPayMethod() == PayMethod.BALANCE && detail.getStatus() == PaymentStatus.SUCCESS) {
          detail.setRefundAmount(detail.getAmount());
          detail.setRefundTime(new Date());
          detail.setStatus(PaymentStatus.REFUNDED);
          paymentDetailMapper.updateById(detail);
        }
      }
    }

    // 7. 处理微信退款（模拟）
    if (wechatRefund.compareTo(BigDecimal.ZERO) > 0) {
      // 实际项目中这里应该调用微信退款API
      // 这里模拟直接成功
      for (PaymentDetail detail : paymentDetails) {
        if (detail.getPayMethod() == PayMethod.WECHAT && detail.getStatus() == PaymentStatus.SUCCESS) {
          detail.setRefundAmount(detail.getAmount());
          detail.setRefundTime(new Date());
          detail.setStatus(PaymentStatus.REFUNDED);
          paymentDetailMapper.updateById(detail);
        }
      }
    }

    // 8. 更新退款记录状态
    refundRecord.setStatus(RefundStatus.SUCCESS);
    refundRecord.setSuccessTime(new Date());
    refundRecordMapper.updateById(refundRecord);

    // 9. 更新支付订单退款状态
    paymentOrder.setRefundStatus(2); // 全额退款
    paymentOrder.setRefundedAmount(totalRefund);
    paymentOrder.setStatus(PaymentStatus.REFUNDED);
    paymentOrderMapper.updateById(paymentOrder);

    // 10. 更新租约状态
    LambdaUpdateWrapper<LeaseAgreement> agreementUpdateWrapper = new LambdaUpdateWrapper<>();
    agreementUpdateWrapper.eq(LeaseAgreement::getId, agreement.getId())
        .set(LeaseAgreement::getPaymentStatus, PaymentStatus.REFUNDED)
        .set(LeaseAgreement::getStatus, LeaseStatus.CANCELED);
    leaseAgreementMapper.update(null, agreementUpdateWrapper);

    // 11. 构建响应
    RefundResponse response = new RefundResponse();
    response.setRefundNo(refundRecord.getRefundNo());
    response.setOriginalOrderNo(paymentOrder.getOrderNo());
    response.setRefundAmount(totalRefund);
    response.setBalanceRefund(balanceRefund);
    response.setWechatRefund(wechatRefund);
    response.setStatus(RefundStatus.SUCCESS);
    response.setRefundTime(refundRecord.getSuccessTime());
    response.setMessage("退款成功，余额退款" + balanceRefund + "元，微信退款" + wechatRefund + "元");

    return response;
  }

  /**
   * 查询退款状态
   *
   * @param loginUser 当前登录用户
   * @param refundNo  退款单号
   * @return 退款响应结果
   */
  @Override
  public RefundResponse getRefundStatus(LoginUser loginUser, String refundNo) {
    RefundRecord refundRecord = refundRecordMapper.selectOne(
        new LambdaQueryWrapper<RefundRecord>()
            .eq(RefundRecord::getRefundNo, refundNo));
    if (refundRecord == null) {
      throw new LeaseException(ResultCodeEnum.DATA_ERROR);
    }

    // 校验权限
    LeaseAgreement agreement = leaseAgreementMapper.selectById(refundRecord.getLeaseAgreementId());
    checkAccess(loginUser, agreement);

    PaymentOrder paymentOrder = paymentOrderMapper.selectById(refundRecord.getPaymentOrderId());

    RefundResponse response = new RefundResponse();
    response.setRefundNo(refundRecord.getRefundNo());
    response.setOriginalOrderNo(paymentOrder != null ? paymentOrder.getOrderNo() : null);
    response.setRefundAmount(refundRecord.getRefundAmount());
    response.setBalanceRefund(refundRecord.getBalanceRefund());
    response.setWechatRefund(refundRecord.getWechatRefund());
    response.setStatus(refundRecord.getStatus());
    response.setRefundTime(refundRecord.getSuccessTime());

    return response;
  }
}
