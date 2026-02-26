package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.*;
import com.atguigu.lease.web.app.mapper.*;
import com.atguigu.lease.web.app.service.UnifiedPaymentService;
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
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
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
  private static final long RENT_PAY_GRACE_MILLIS = 30L * 24 * 60 * 60 * 1000;

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

  private static boolean isSameDay(Date left, Date right) {
    if (left == null || right == null) {
      return false;
    }
    return left.toInstant().atZone(ZoneId.systemDefault()).toLocalDate()
        .equals(right.toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
  }

  private static int parseCycleMonths(String payMonthCount) {
    if (payMonthCount == null) {
      return 1;
    }
    try {
      int parsed = Integer.parseInt(payMonthCount);
      return parsed <= 0 ? 1 : parsed;
    } catch (NumberFormatException ignore) {
      return 1;
    }
  }

  private static class PayableSnapshot {
    private PaymentStage stage;
    private boolean canPay;
    private Date payDeadline;
    private BigDecimal depositDue = BigDecimal.ZERO;
    private BigDecimal rentDue = BigDecimal.ZERO;
    private BigDecimal totalDue = BigDecimal.ZERO;
    private BigDecimal depositPaid = BigDecimal.ZERO;
    private BigDecimal rentPaid = BigDecimal.ZERO;
    private BigDecimal depositOffset = BigDecimal.ZERO;
    private boolean depositHeld;
    private Date depositPaidTime;
    private int cycleMonths;
  }

  private PayableSnapshot calculatePayableSnapshot(LeaseAgreement agreement) {
    PayableSnapshot snapshot = new PayableSnapshot();

    BigDecimal rentPerMonth = Optional.ofNullable(agreement.getRent()).orElse(BigDecimal.ZERO);
    BigDecimal deposit = Optional.ofNullable(agreement.getDeposit()).orElse(BigDecimal.ZERO);

    PaymentType paymentType = agreement.getPaymentTypeId() == null ? null
        : paymentTypeMapper.selectById(agreement.getPaymentTypeId());
    snapshot.cycleMonths = parseCycleMonths(paymentType != null ? paymentType.getPayMonthCount() : null);
    BigDecimal rentCycleDue = rentPerMonth.multiply(BigDecimal.valueOf(snapshot.cycleMonths));

    List<PaymentOrder> paidOrders = paymentOrderMapper.selectList(new LambdaQueryWrapper<PaymentOrder>()
        .eq(PaymentOrder::getLeaseAgreementId, agreement.getId())
        .eq(PaymentOrder::getStatus, PaymentStatus.SUCCESS));

    Date termStart = agreement.getLeaseStartDate();
    List<PaymentOrder> termOrders = new ArrayList<>();
    for (PaymentOrder po : paidOrders) {
      if (po.getTermStartDate() != null && isSameDay(po.getTermStartDate(), termStart)) {
        termOrders.add(po);
      }
    }
    if (termOrders.isEmpty()) {
      for (PaymentOrder po : paidOrders) {
        if (po.getTermStartDate() == null) {
          termOrders.add(po);
        }
      }
    }

    BigDecimal depositPaid = BigDecimal.ZERO;
    BigDecimal rentPaid = BigDecimal.ZERO;
    BigDecimal legacyPaidTotal = BigDecimal.ZERO;
    Date earliestPaidTime = null;

    for (PaymentOrder po : termOrders) {
      if (po.getSuccessTime() != null) {
        if (earliestPaidTime == null || po.getSuccessTime().before(earliestPaidTime)) {
          earliestPaidTime = po.getSuccessTime();
        }
      }
      BigDecimal d = po.getDepositAmount();
      BigDecimal r = po.getRentAmount();
      if (d == null && r == null) {
        legacyPaidTotal = legacyPaidTotal.add(Optional.ofNullable(po.getAmountTotal()).orElse(BigDecimal.ZERO));
      } else {
        depositPaid = depositPaid.add(Optional.ofNullable(d).orElse(BigDecimal.ZERO));
        rentPaid = rentPaid.add(Optional.ofNullable(r).orElse(BigDecimal.ZERO));
      }
    }

    snapshot.depositPaidTime = earliestPaidTime;

    BigDecimal depositLeft = deposit.subtract(depositPaid);
    if (depositLeft.compareTo(BigDecimal.ZERO) < 0) {
      depositLeft = BigDecimal.ZERO;
    }
    BigDecimal legacyDepositPay = legacyPaidTotal.min(depositLeft);
    depositPaid = depositPaid.add(legacyDepositPay);
    legacyPaidTotal = legacyPaidTotal.subtract(legacyDepositPay);
    rentPaid = rentPaid.add(legacyPaidTotal);

    snapshot.depositPaid = depositPaid;
    snapshot.rentPaid = rentPaid;

    boolean depositHeld = false;
    for (PaymentOrder po : paidOrders) {
      if (termOrders.contains(po)) {
        continue;
      }
      if (po.getDepositAmount() != null && po.getDepositAmount().compareTo(BigDecimal.ZERO) > 0) {
        depositHeld = true;
        break;
      }
      if (po.getDepositAmount() == null && po.getRentAmount() == null
          && Optional.ofNullable(po.getAmountTotal()).orElse(BigDecimal.ZERO).compareTo(BigDecimal.ZERO) > 0) {
        depositHeld = true;
        break;
      }
    }
    snapshot.depositHeld = depositHeld;

    BigDecimal depositDue = depositHeld ? BigDecimal.ZERO : deposit.subtract(depositPaid);
    if (depositDue.compareTo(BigDecimal.ZERO) < 0) {
      depositDue = BigDecimal.ZERO;
    }
    snapshot.depositDue = depositDue;

    BigDecimal rentLeftBeforeOffset = rentCycleDue.subtract(rentPaid);
    if (rentLeftBeforeOffset.compareTo(BigDecimal.ZERO) < 0) {
      rentLeftBeforeOffset = BigDecimal.ZERO;
    }

    if (depositDue.compareTo(BigDecimal.ZERO) > 0) {
      snapshot.stage = PaymentStage.DEPOSIT;
      snapshot.canPay = true;
      snapshot.totalDue = depositDue;
      return snapshot;
    }

    if (rentLeftBeforeOffset.compareTo(BigDecimal.ZERO) > 0) {
      BigDecimal depositOffset = depositPaid.min(rentLeftBeforeOffset);
      BigDecimal rentDue = rentLeftBeforeOffset.subtract(depositOffset);
      if (rentDue.compareTo(BigDecimal.ZERO) <= 0) {
        snapshot.stage = PaymentStage.NONE;
        snapshot.canPay = false;
        snapshot.depositOffset = depositOffset;
        snapshot.rentDue = BigDecimal.ZERO;
        snapshot.totalDue = BigDecimal.ZERO;
        return snapshot;
      }
      snapshot.depositOffset = depositOffset;
      snapshot.rentDue = rentDue;
      snapshot.totalDue = rentDue;

      if (!depositHeld) {
        Date deadline = snapshot.depositPaidTime == null ? null
            : new Date(snapshot.depositPaidTime.getTime() + RENT_PAY_GRACE_MILLIS);
        snapshot.payDeadline = deadline;
        if (deadline != null && new Date().after(deadline)) {
          snapshot.stage = PaymentStage.RENT_OVERDUE;
          snapshot.canPay = false;
          return snapshot;
        }
      }
      snapshot.stage = PaymentStage.RENT;
      snapshot.canPay = true;
      return snapshot;
    }

    snapshot.stage = PaymentStage.NONE;
    snapshot.canPay = false;
    snapshot.totalDue = BigDecimal.ZERO;
    return snapshot;
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
    PayableSnapshot snapshot = calculatePayableSnapshot(agreement);

    PaymentPreviewVo previewVo = new PaymentPreviewVo();
    previewVo.setLeaseAgreementId(leaseAgreementId);
    previewVo.setTotalAmount(snapshot.totalDue);
    previewVo.setDepositAmount(snapshot.depositDue);
    previewVo.setRentAmount(snapshot.rentDue);
    previewVo.setDepositOffset(snapshot.depositOffset);
    previewVo.setStage(snapshot.stage);
    previewVo.setCanPay(snapshot.canPay);
    previewVo.setPayDeadline(snapshot.payDeadline);

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

    if (LeaseStatus.RENEWING.equals(agreement.getStatus())) {
      throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST.getCode(), "续约待确认，后台确认后才能支付");
    }

    // 2. 计算本次应付金额（按阶段）
    PayableSnapshot snapshot = calculatePayableSnapshot(agreement);
    if (snapshot.stage == PaymentStage.NONE) {
      throw new LeaseException(ResultCodeEnum.REPEAT_SUBMIT);
    }
    if (snapshot.stage == PaymentStage.RENT_OVERDUE) {
      throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST.getCode(), "超过租金补缴期限，暂不支持支付");
    }
    if (!snapshot.canPay || snapshot.totalDue.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST);
    }

    BigDecimal totalAmount = snapshot.totalDue;
    BigDecimal alipayAmount = Optional.ofNullable(request.getAlipayAmount()).orElse(BigDecimal.ZERO);
    BigDecimal wechatAmount = Optional.ofNullable(request.getWechatAmount()).orElse(BigDecimal.ZERO);

    // 3. 校验支付金额
    validatePaymentAmount(request, totalAmount, alipayAmount, wechatAmount);

    // 4. 确定支付方式组合
    PayMethodCombination payMethodCombination = determinePayMethodCombination(request, alipayAmount, wechatAmount);

    // 5. 创建支付订单
    BigDecimal depositAmount = PaymentStage.DEPOSIT.equals(snapshot.stage) ? totalAmount : BigDecimal.ZERO;
    BigDecimal rentAmount = PaymentStage.RENT.equals(snapshot.stage) ? totalAmount : BigDecimal.ZERO;
    Integer bizType = PaymentStage.DEPOSIT.equals(snapshot.stage) ? 1 : 2;

    PaymentOrder paymentOrder = createPaymentOrder(agreement, request, totalAmount,
        depositAmount, rentAmount, bizType,
        alipayAmount, wechatAmount, payMethodCombination);

    // 6. 构建响应（支付宝/微信均为待支付，需用户模拟确认）
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
  private PaymentOrder createPaymentOrder(LeaseAgreement agreement, UnifiedPayRequest request,
      BigDecimal totalAmount,
      BigDecimal depositAmount,
      BigDecimal rentAmount,
      Integer bizType,
      BigDecimal alipayAmount,
      BigDecimal wechatAmount,
      PayMethodCombination payMethodCombination) {
    PaymentOrder paymentOrder = new PaymentOrder();
    paymentOrder.setOrderNo(generateOrderNo("PAY"));
    paymentOrder.setLeaseAgreementId(agreement.getId());
    paymentOrder.setTermStartDate(agreement.getLeaseStartDate());
    paymentOrder.setSubject(buildSubject(agreement, request.getScene()));
    paymentOrder.setAmountTotal(totalAmount);
    paymentOrder.setStatus(PaymentStatus.WAITING);
    paymentOrder.setPayChannel("UNIFIED");
    paymentOrder.setPayMethod(payMethodCombination);
    paymentOrder.setBizType(bizType);
    paymentOrder.setDepositAmount(depositAmount);
    paymentOrder.setRentAmount(rentAmount);
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
    refreshAgreementPaymentStatus(paymentOrder.getLeaseAgreementId());
  }

  private void refreshAgreementPaymentStatus(Long leaseAgreementId) {
    LeaseAgreement agreement = leaseAgreementMapper.selectById(leaseAgreementId);
    if (agreement == null) {
      throw new LeaseException(ResultCodeEnum.DATA_ERROR);
    }
    PayableSnapshot snapshot = calculatePayableSnapshot(agreement);

    LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
    updateWrapper.eq(LeaseAgreement::getId, leaseAgreementId);

    if (snapshot.depositDue.compareTo(BigDecimal.ZERO) <= 0) {
      updateWrapper.set(LeaseAgreement::getStatus, LeaseStatus.SIGNED);
    }
    if (snapshot.stage == PaymentStage.NONE) {
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
