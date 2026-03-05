package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.*;
import com.atguigu.lease.web.app.mapper.*;
import com.atguigu.lease.web.app.service.RentBillService;
import com.atguigu.lease.web.app.service.UnifiedPaymentService;
import com.atguigu.lease.web.app.vo.bill.BillItemVo;
import com.atguigu.lease.web.app.vo.bill.CurrentBillVo;
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
 * 支持支付宝支付、微信支付、混合支付及退款
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
  private PaymentTypeMapper paymentTypeMapper;

  @Autowired
  private RentBillMapper rentBillMapper;

  @Autowired
  private RentBillService rentBillService;

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
   * 构建模拟支付宝支付地址
   */
  private String buildMockAlipayPayUrl(String orderNo) {
    return "/mock/alipay/pay?orderNo=" + orderNo;
  }

  /**
   * 构建模拟二维码地址
   */
  private String buildMockQrCode(String h5Url) {
    return QR_CODE_SERVICE + URLEncoder.encode(h5Url, StandardCharsets.UTF_8);
  }

  /**
   * 组装订单标题
   */
  private String buildSubject(LeaseAgreement agreement, Integer periodIndex, Integer totalPeriods) {
    String base = "租约支付-" + Optional.ofNullable(agreement.getName()).orElse("租客");
    if (periodIndex != null && totalPeriods != null) {
      base += "-第" + periodIndex + "期/" + totalPeriods + "期";
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
   * 获取支付预览信息
   * 改为从租金账单获取当前应付账单
   *
   * @param loginUser        当前登录用户
   * @param leaseAgreementId 租约ID
   * @return 支付预览信息
   */
  @Override
  public PaymentPreviewVo getPaymentPreview(LoginUser loginUser, Long leaseAgreementId) {
    // 1. 校验租约
    LeaseAgreement agreement = leaseAgreementMapper.selectById(leaseAgreementId);
    checkAccess(loginUser, agreement);

    // 2. 确保账单已生成
    rentBillService.generateBills(leaseAgreementId);

    // 3. 获取当前应付账单
    CurrentBillVo currentBill = rentBillService.getCurrentPayableBill(leaseAgreementId);

    PaymentPreviewVo previewVo = new PaymentPreviewVo();
    previewVo.setLeaseAgreementId(leaseAgreementId);

    if (currentBill.getBill() == null) {
      // 没有待支付账单
      previewVo.setStage(PaymentStage.NONE);
      previewVo.setCanPay(false);
      previewVo.setTotalAmount(BigDecimal.ZERO);
      previewVo.setDepositAmount(BigDecimal.ZERO);
      previewVo.setRentAmount(BigDecimal.ZERO);
      return previewVo;
    }

    BillItemVo bill = currentBill.getBill();
    previewVo.setTotalAmount(bill.getTotalAmount());
    previewVo.setDepositAmount(bill.getDepositAmount());
    previewVo.setRentAmount(bill.getRentAmount());
    previewVo.setPayDeadline(currentBill.getPayDeadline());

    // 设置支付阶段
    if (!currentBill.getCanPay()) {
      previewVo.setStage(PaymentStage.RENT_OVERDUE);
      previewVo.setCanPay(false);
    } else {
      // 根据是否有押金判断阶段
      if (bill.getDepositAmount() != null && bill.getDepositAmount().compareTo(BigDecimal.ZERO) > 0) {
        previewVo.setStage(PaymentStage.DEPOSIT);
      } else {
        previewVo.setStage(PaymentStage.RENT);
      }
      previewVo.setCanPay(true);
    }

    return previewVo;
  }

  /**
   * 统一支付接口
   * 改为关联租金账单
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

    if (LeaseStatus.RENEWING.equals(agreement.getStatus())) {
      throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST.getCode(), "续约待确认，后台确认后才能支付");
    }

    // 2. 确保账单已生成
    rentBillService.generateBills(request.getLeaseAgreementId());

    // 3. 获取当前应付账单
    CurrentBillVo currentBill = rentBillService.getCurrentPayableBill(request.getLeaseAgreementId());
    if (currentBill.getBill() == null) {
      throw new LeaseException(ResultCodeEnum.REPEAT_SUBMIT);
    }
    if (!currentBill.getCanPay()) {
      throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST.getCode(), 
          currentBill.getMessage() != null ? currentBill.getMessage() : "当前不可支付");
    }

    BillItemVo bill = currentBill.getBill();
    BigDecimal totalAmount = bill.getTotalAmount();
    BigDecimal alipayAmount = Optional.ofNullable(request.getAlipayAmount()).orElse(BigDecimal.ZERO);
    BigDecimal wechatAmount = Optional.ofNullable(request.getWechatAmount()).orElse(BigDecimal.ZERO);

    // 4. 校验支付金额
    validatePaymentAmount(request, totalAmount, alipayAmount, wechatAmount);

    // 5. 确定支付方式组合
    PayMethodCombination payMethodCombination = determinePayMethodCombination(request, alipayAmount, wechatAmount);

    // 6. 创建支付订单
    PaymentOrder paymentOrder = createPaymentOrder(agreement, bill, 
        alipayAmount, wechatAmount, payMethodCombination);

    // 7. 构建响应
    UnifiedPayResponse response = buildPayResponse(paymentOrder,
        request.getUseAlipay(), alipayAmount,
        request.getUseWechat(), wechatAmount);

    return response;
  }

  /**
   * 校验支付金额
   */
  private void validatePaymentAmount(UnifiedPayRequest request, BigDecimal totalAmount,
      BigDecimal alipayAmount, BigDecimal wechatAmount) {
    if (totalAmount == null || totalAmount.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }
    // 至少选择一种支付方式
    if (!Boolean.TRUE.equals(request.getUseAlipay()) && !Boolean.TRUE.equals(request.getUseWechat())) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    if (Boolean.TRUE.equals(request.getUseAlipay()) && alipayAmount.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }
    if (Boolean.TRUE.equals(request.getUseWechat()) && wechatAmount.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 支付金额之和必须等于订单金额
    BigDecimal payTotal = alipayAmount.add(wechatAmount);
    if (payTotal.compareTo(totalAmount) != 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }
  }

  /**
   * 确定支付方式组合
   */
  private PayMethodCombination determinePayMethodCombination(UnifiedPayRequest request,
      BigDecimal alipayAmount,
      BigDecimal wechatAmount) {
    boolean useAlipay = Boolean.TRUE.equals(request.getUseAlipay()) && alipayAmount.compareTo(BigDecimal.ZERO) > 0;
    boolean useWechat = Boolean.TRUE.equals(request.getUseWechat()) && wechatAmount.compareTo(BigDecimal.ZERO) > 0;

    if (useAlipay && useWechat) {
      return PayMethodCombination.MIXED;
    } else if (useAlipay) {
      return PayMethodCombination.ALIPAY_ONLY;
    } else if (useWechat) {
      return PayMethodCombination.WECHAT_ONLY;
    } else {
      return PayMethodCombination.NOT_SELECTED;
    }
  }

  /**
   * 创建支付订单
   */
  private PaymentOrder createPaymentOrder(LeaseAgreement agreement, BillItemVo bill,
      BigDecimal alipayAmount,
      BigDecimal wechatAmount,
      PayMethodCombination payMethodCombination) {
    PaymentOrder paymentOrder = new PaymentOrder();
    paymentOrder.setOrderNo(generateOrderNo("PAY"));
    paymentOrder.setLeaseAgreementId(agreement.getId());
    paymentOrder.setRentBillId(bill.getId());
    paymentOrder.setTermStartDate(agreement.getLeaseStartDate());
    paymentOrder.setSubject(buildSubject(agreement, bill.getPeriodIndex(), bill.getTotalPeriods()));
    paymentOrder.setAmountTotal(bill.getTotalAmount());
    paymentOrder.setStatus(PaymentStatus.WAITING);
    paymentOrder.setPayChannel("UNIFIED");
    paymentOrder.setPayMethod(payMethodCombination);
    // 业务类型：1押金 2租金 3押金+租金
    int bizType = 2;
    if (bill.getDepositAmount() != null && bill.getDepositAmount().compareTo(BigDecimal.ZERO) > 0) {
      if (bill.getRentAmount() != null && bill.getRentAmount().compareTo(BigDecimal.ZERO) > 0) {
        bizType = 3;
      } else {
        bizType = 1;
      }
    }
    paymentOrder.setBizType(bizType);
    paymentOrder.setDepositAmount(bill.getDepositAmount() != null ? bill.getDepositAmount() : BigDecimal.ZERO);
    paymentOrder.setRentAmount(bill.getRentAmount() != null ? bill.getRentAmount() : BigDecimal.ZERO);
    paymentOrder.setBalanceAmount(alipayAmount);
    paymentOrder.setWechatAmount(wechatAmount);
    paymentOrder.setRefundStatus(0);
    paymentOrder.setRefundedAmount(BigDecimal.ZERO);

    String mainH5Url = null;
    if (wechatAmount.compareTo(BigDecimal.ZERO) > 0) {
      mainH5Url = buildMockWechatPayUrl(paymentOrder.getOrderNo());
    } else if (alipayAmount.compareTo(BigDecimal.ZERO) > 0) {
      mainH5Url = buildMockAlipayPayUrl(paymentOrder.getOrderNo());
    }
    if (mainH5Url != null) {
      paymentOrder.setH5Url(mainH5Url);
      paymentOrder.setCodeUrl(buildMockQrCode(mainH5Url));
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
   * 构建支付响应
   */
  private UnifiedPayResponse buildPayResponse(PaymentOrder paymentOrder,
      Boolean useAlipay, BigDecimal alipayAmount,
      Boolean useWechat, BigDecimal wechatAmount) {
    UnifiedPayResponse response = new UnifiedPayResponse();
    response.setPaymentOrderId(paymentOrder.getId());
    response.setOrderNo(paymentOrder.getOrderNo());
    response.setAmountTotal(paymentOrder.getAmountTotal());
    response.setAlipayAmount(paymentOrder.getBalanceAmount());
    response.setWechatAmount(paymentOrder.getWechatAmount());
    response.setPayMethod(paymentOrder.getPayMethod());
    response.setStatus(paymentOrder.getStatus());
    response.setAlipayPaid(false);

    boolean needAlipayPay = Boolean.TRUE.equals(useAlipay) && alipayAmount.compareTo(BigDecimal.ZERO) > 0;
    boolean needWechatPay = Boolean.TRUE.equals(useWechat) && wechatAmount.compareTo(BigDecimal.ZERO) > 0;
    response.setNeedAlipayPay(needAlipayPay);
    response.setNeedWechatPay(needWechatPay);

    if (needAlipayPay) {
      String alipayH5Url = buildMockAlipayPayUrl(paymentOrder.getOrderNo());
      response.setAlipayH5Url(alipayH5Url);
      response.setAlipayCodeUrl(buildMockQrCode(alipayH5Url));

      PaymentDetail alipayDetail = new PaymentDetail();
      alipayDetail.setPaymentOrderId(paymentOrder.getId());
      alipayDetail.setPayMethod(PayMethod.ALIPAY);
      alipayDetail.setAmount(alipayAmount);
      alipayDetail.setStatus(PaymentStatus.WAITING);
      alipayDetail.setRefundAmount(BigDecimal.ZERO);
      paymentDetailMapper.insert(alipayDetail);
    }

    if (needWechatPay) {
      String wechatH5Url = buildMockWechatPayUrl(paymentOrder.getOrderNo());
      response.setWechatH5Url(wechatH5Url);
      response.setWechatCodeUrl(buildMockQrCode(wechatH5Url));

      PaymentDetail wechatDetail = new PaymentDetail();
      wechatDetail.setPaymentOrderId(paymentOrder.getId());
      wechatDetail.setPayMethod(PayMethod.WECHAT);
      wechatDetail.setAmount(wechatAmount);
      wechatDetail.setStatus(PaymentStatus.WAITING);
      wechatDetail.setRefundAmount(BigDecimal.ZERO);
      paymentDetailMapper.insert(wechatDetail);
    }

    if (needAlipayPay && needWechatPay) {
      response.setMessage("请分别完成支付宝和微信支付");
    } else if (needAlipayPay) {
      response.setMessage("请完成支付宝支付");
    } else if (needWechatPay) {
      response.setMessage("请完成微信支付");
    }

    return response;
  }

  /**
   * 完成支付订单
   */
  private void completePaymentOrder(PaymentOrder paymentOrder) {
    paymentOrder.setStatus(PaymentStatus.SUCCESS);
    paymentOrder.setSuccessTime(new Date());
    paymentOrderMapper.updateById(paymentOrder);

    // 标记账单已支付
    if (paymentOrder.getRentBillId() != null) {
      rentBillService.markBillPaid(paymentOrder.getRentBillId(), paymentOrder.getId());
    }

    // 更新租约状态
    updateAgreementStatus(paymentOrder.getLeaseAgreementId());
  }

  /**
   * 更新租约状态
   */
  private void updateAgreementStatus(Long leaseAgreementId) {
    LeaseAgreement agreement = leaseAgreementMapper.selectById(leaseAgreementId);
    if (agreement == null) {
      return;
    }

    // 检查是否还有待支付账单
    Long unpaidCount = rentBillMapper.selectCount(new LambdaQueryWrapper<RentBill>()
        .eq(RentBill::getLeaseAgreementId, leaseAgreementId)
        .in(RentBill::getStatus, BillStatus.WAITING, BillStatus.OVERDUE));

    LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
    updateWrapper.eq(LeaseAgreement::getId, leaseAgreementId);

    // 如果押金已支付，更新租约状态为已签约
    RentBill firstBill = rentBillMapper.selectOne(new LambdaQueryWrapper<RentBill>()
        .eq(RentBill::getLeaseAgreementId, leaseAgreementId)
        .eq(RentBill::getPeriodIndex, 1));
    if (firstBill != null && firstBill.getStatus() == BillStatus.PAID) {
      updateWrapper.set(LeaseAgreement::getStatus, LeaseStatus.SIGNED);
    }

    // 如果所有账单已支付，更新支付状态
    if (unpaidCount == null || unpaidCount == 0) {
      updateWrapper.set(LeaseAgreement::getPaymentStatus, PaymentStatus.SUCCESS);
    } else {
      updateWrapper.set(LeaseAgreement::getPaymentStatus, PaymentStatus.WAITING);
    }

    leaseAgreementMapper.update(null, updateWrapper);
  }

  /**
   * 支付宝支付回调处理
   *
   * @param orderNo 商户订单号
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public void handleAlipayPayCallback(String orderNo) {
    handleThirdPartyPayCallback(orderNo, PayMethod.ALIPAY);
  }

  /**
   * 微信支付回调处理
   *
   * @param orderNo 商户订单号
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public void handleWechatPayCallback(String orderNo) {
    handleThirdPartyPayCallback(orderNo, PayMethod.WECHAT);
  }

  private void handleThirdPartyPayCallback(String orderNo, PayMethod payMethod) {
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

    String transactionPrefix = PayMethod.ALIPAY.equals(payMethod) ? "ALI" : "WX";
    LambdaUpdateWrapper<PaymentDetail> detailUpdateWrapper = new LambdaUpdateWrapper<>();
    detailUpdateWrapper.eq(PaymentDetail::getPaymentOrderId, paymentOrder.getId())
        .eq(PaymentDetail::getPayMethod, payMethod)
        .eq(PaymentDetail::getStatus, PaymentStatus.WAITING)
        .set(PaymentDetail::getStatus, PaymentStatus.SUCCESS)
        .set(PaymentDetail::getPayTime, new Date())
        .set(PaymentDetail::getTransactionNo, generateOrderNo(transactionPrefix));
    paymentDetailMapper.update(null, detailUpdateWrapper);

    Long waitingCount = paymentDetailMapper.selectCount(new LambdaQueryWrapper<PaymentDetail>()
        .eq(PaymentDetail::getPaymentOrderId, paymentOrder.getId())
        .eq(PaymentDetail::getStatus, PaymentStatus.WAITING));
    if (waitingCount != null && waitingCount > 0) {
      return;
    }

    completePaymentOrder(paymentOrder);
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

    Long paidCount = paymentOrderMapper.selectCount(new LambdaQueryWrapper<PaymentOrder>()
        .eq(PaymentOrder::getLeaseAgreementId, agreement.getId())
        .eq(PaymentOrder::getStatus, PaymentStatus.SUCCESS));
    if (paidCount == null || paidCount <= 0) {
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
    BigDecimal alipayRefund = BigDecimal.ZERO;
    BigDecimal wechatRefund = BigDecimal.ZERO;

    for (PaymentDetail detail : paymentDetails) {
      if (detail.getStatus() == PaymentStatus.SUCCESS) {
        BigDecimal refundableAmount = detail.getAmount().subtract(
            Optional.ofNullable(detail.getRefundAmount()).orElse(BigDecimal.ZERO));
        if (detail.getPayMethod() == PayMethod.ALIPAY) {
          alipayRefund = alipayRefund.add(refundableAmount);
        } else if (detail.getPayMethod() == PayMethod.WECHAT) {
          wechatRefund = wechatRefund.add(refundableAmount);
        }
      }
    }

    BigDecimal totalRefund = alipayRefund.add(wechatRefund);
    if (totalRefund.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 5. 创建退款记录
    RefundRecord refundRecord = new RefundRecord();
    refundRecord.setRefundNo(generateOrderNo("REF"));
    refundRecord.setPaymentOrderId(paymentOrder.getId());
    refundRecord.setLeaseAgreementId(agreement.getId());
    refundRecord.setRefundAmount(totalRefund);
    refundRecord.setBalanceRefund(alipayRefund);
    refundRecord.setWechatRefund(wechatRefund);
    refundRecord.setStatus(RefundStatus.PROCESSING);
    refundRecord.setReason(request.getReason());
    refundRecordMapper.insert(refundRecord);

    // 6. 处理支付宝退款（模拟）
    if (alipayRefund.compareTo(BigDecimal.ZERO) > 0) {
      for (PaymentDetail detail : paymentDetails) {
        if (detail.getPayMethod() == PayMethod.ALIPAY && detail.getStatus() == PaymentStatus.SUCCESS) {
          detail.setRefundAmount(detail.getAmount());
          detail.setRefundTime(new Date());
          detail.setStatus(PaymentStatus.REFUNDED);
          paymentDetailMapper.updateById(detail);
        }
      }
    }

    // 7. 处理微信退款（模拟）
    if (wechatRefund.compareTo(BigDecimal.ZERO) > 0) {
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
    paymentOrder.setRefundStatus(2);
    paymentOrder.setRefundedAmount(totalRefund);
    paymentOrder.setStatus(PaymentStatus.REFUNDED);
    paymentOrderMapper.updateById(paymentOrder);

    // 10. 取消未支付账单
    rentBillService.cancelUnpaidBills(agreement.getId());

    // 11. 更新租约状态
    LambdaUpdateWrapper<LeaseAgreement> agreementUpdateWrapper = new LambdaUpdateWrapper<>();
    agreementUpdateWrapper.eq(LeaseAgreement::getId, agreement.getId())
        .set(LeaseAgreement::getPaymentStatus, PaymentStatus.REFUNDED)
        .set(LeaseAgreement::getStatus, LeaseStatus.CANCELED);
    leaseAgreementMapper.update(null, agreementUpdateWrapper);

    // 12. 构建响应
    RefundResponse response = new RefundResponse();
    response.setRefundNo(refundRecord.getRefundNo());
    response.setOriginalOrderNo(paymentOrder.getOrderNo());
    response.setRefundAmount(totalRefund);
    response.setAlipayRefund(alipayRefund);
    response.setWechatRefund(wechatRefund);
    response.setStatus(RefundStatus.SUCCESS);
    response.setRefundTime(refundRecord.getSuccessTime());
    response.setMessage("退款成功，支付宝退款" + alipayRefund + "元，微信退款" + wechatRefund + "元");

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
    response.setAlipayRefund(refundRecord.getBalanceRefund());
    response.setWechatRefund(refundRecord.getWechatRefund());
    response.setStatus(refundRecord.getStatus());
    response.setRefundTime(refundRecord.getSuccessTime());

    return response;
  }
}
