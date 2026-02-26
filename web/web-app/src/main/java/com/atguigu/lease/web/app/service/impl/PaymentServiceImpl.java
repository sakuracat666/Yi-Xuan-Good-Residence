package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.LeaseAgreement;
import com.atguigu.lease.model.entity.PaymentOrder;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.model.enums.PaymentStatus;
import com.atguigu.lease.web.app.mapper.LeaseAgreementMapper;
import com.atguigu.lease.web.app.mapper.PaymentOrderMapper;
import com.atguigu.lease.web.app.service.PaymentService;
import com.atguigu.lease.web.app.vo.payment.PaymentCreateRequest;
import com.atguigu.lease.web.app.vo.payment.PaymentHistoryItemVo;
import com.atguigu.lease.web.app.vo.payment.PaymentHistorySummaryVo;
import com.atguigu.lease.web.app.vo.payment.HomePendingPaymentVo;
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
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Random;

/**
 * 支付业务实现
 */
@Service
public class PaymentServiceImpl implements PaymentService {

    private static final DateTimeFormatter ORDER_NO_FORMATTER = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
    private static final String QR_CODE_SERVICE = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=";

    @Autowired
    private PaymentOrderMapper paymentOrderMapper;
    @Autowired
    private LeaseAgreementMapper leaseAgreementMapper;

    /**
     * 生成商户订单号
     */
    private String generateOrderNo() {
        String timePart = LocalDateTime.now().format(ORDER_NO_FORMATTER);
        int randomPart = new Random().nextInt(900000) + 100000;
        return "PAY" + timePart + randomPart;
    }

    /**
     * 构建模拟支付地址
     */
    private String buildMockPayUrl(String orderNo) {
        return "/mock/pay?orderNo=" + orderNo;
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

    @Override
    @Transactional(rollbackFor = Exception.class)
    public PaymentOrder createPaymentOrder(LoginUser loginUser, PaymentCreateRequest request) {
        LeaseAgreement agreement = leaseAgreementMapper.selectById(request.getLeaseAgreementId());
        checkAccess(loginUser, agreement);
        if (agreement.getPaymentStatus() == PaymentStatus.SUCCESS) {
            throw new LeaseException(ResultCodeEnum.REPEAT_SUBMIT);
        }
        if (LeaseStatus.RENEWING.equals(agreement.getStatus())) {
            throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST.getCode(), "续约待确认，后台确认后才能支付");
        }

        PaymentOrder paymentOrder = new PaymentOrder();
        paymentOrder.setOrderNo(generateOrderNo());
        paymentOrder.setLeaseAgreementId(agreement.getId());
        paymentOrder.setSubject(buildSubject(agreement, request.getScene()));
        paymentOrder.setAmountTotal(calculateAmount(agreement));
        paymentOrder.setStatus(PaymentStatus.WAITING);
        paymentOrder.setPayChannel("WECHAT_H5");
        String h5Url = buildMockPayUrl(paymentOrder.getOrderNo());
        paymentOrder.setH5Url(h5Url);
        paymentOrder.setCodeUrl(buildMockQrCode(h5Url));
        paymentOrderMapper.insert(paymentOrder);

        LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(LeaseAgreement::getId, agreement.getId())
                .set(LeaseAgreement::getPaymentOrderId, paymentOrder.getId())
                .set(LeaseAgreement::getPaymentStatus, PaymentStatus.WAITING);
        leaseAgreementMapper.update(null, updateWrapper);

        return paymentOrder;
    }

    @Override
    public PaymentOrder getPaymentOrder(LoginUser loginUser, String orderNo) {
        PaymentOrder paymentOrder = paymentOrderMapper.selectOne(new LambdaQueryWrapper<PaymentOrder>()
                .eq(PaymentOrder::getOrderNo, orderNo));
        if (paymentOrder == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        LeaseAgreement agreement = leaseAgreementMapper.selectById(paymentOrder.getLeaseAgreementId());
        checkAccess(loginUser, agreement);
        return paymentOrder;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void mockPaySuccess(String orderNo) {
        PaymentOrder paymentOrder = paymentOrderMapper.selectOne(new LambdaQueryWrapper<PaymentOrder>()
                .eq(PaymentOrder::getOrderNo, orderNo));
        if (paymentOrder == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        if (paymentOrder.getStatus() == PaymentStatus.SUCCESS) {
            return;
        }

        paymentOrder.setStatus(PaymentStatus.SUCCESS);
        paymentOrder.setSuccessTime(new Date());
        paymentOrderMapper.updateById(paymentOrder);

        LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(LeaseAgreement::getId, paymentOrder.getLeaseAgreementId())
                .set(LeaseAgreement::getPaymentStatus, PaymentStatus.SUCCESS)
                .set(LeaseAgreement::getStatus, LeaseStatus.SIGNED);
        leaseAgreementMapper.update(null, updateWrapper);
    }

    /**
     * 查询当前租客已支付账单汇总信息
     *
     * @param loginUser 当前登录用户
     * @return 已支付账单汇总数据
     */
    @Override
    public PaymentHistorySummaryVo listPaidHistory(LoginUser loginUser) {
        String phone = loginUser.getUsername();
        List<PaymentHistoryItemVo> items = paymentOrderMapper.selectPaidListByPhone(phone);
        BigDecimal totalAmount = Optional.ofNullable(paymentOrderMapper.sumPaidAmountByPhone(phone))
                .orElse(BigDecimal.ZERO);

        PaymentHistorySummaryVo summaryVo = new PaymentHistorySummaryVo();
        summaryVo.setItems(items);
        summaryVo.setTotalPaidAmount(totalAmount);
        return summaryVo;
    }

    @Override
    public HomePendingPaymentVo getHomePendingOrder(LoginUser loginUser) {
        String phone = loginUser.getUsername();
        return leaseAgreementMapper.selectLatestPendingByPhone(phone);
    }
}
