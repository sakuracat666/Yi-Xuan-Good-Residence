package com.atguigu.lease.web.admin.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.LeaseAgreement;
import com.atguigu.lease.model.entity.PaymentOrder;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.model.enums.PaymentStatus;
import com.atguigu.lease.web.admin.mapper.PaymentOrderMapper;
import com.atguigu.lease.web.admin.mapper.LeaseAgreementMapper;
import com.atguigu.lease.web.admin.service.PaymentOrderService;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderDetailVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderItemVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderQueryVo;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Objects;

/**
 * 支付订单管理服务实现
 */
@Service
public class PaymentOrderServiceImpl extends ServiceImpl<PaymentOrderMapper, PaymentOrder>
        implements PaymentOrderService {

    @Autowired
    private PaymentOrderMapper paymentOrderMapper;
    @Autowired
    private LeaseAgreementMapper leaseAgreementMapper;

    /**
     * 分页查询支付订单
     *
     * @param page    分页参数
     * @param queryVo 查询条件
     * @return 支付订单分页
     */
    @Override
    public IPage<PaymentOrderItemVo> pageOrder(Page<PaymentOrderItemVo> page, PaymentOrderQueryVo queryVo) {
        return paymentOrderMapper.pageOrder(page, queryVo);
    }

    /**
     * 查询支付订单详情
     *
     * @param id 订单主键
     * @return 订单详情
     */
    @Override
    public PaymentOrderDetailVo getDetail(Long id) {
        PaymentOrderDetailVo detailVo = paymentOrderMapper.selectDetailById(id);
        if (detailVo == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        return detailVo;
    }

    /**
     * 关闭支付订单
     *
     * @param orderId    订单主键
     * @param operatorId 操作人ID
     */
    @Override
    public void closeOrder(Long orderId, Long operatorId) {
        PaymentOrder paymentOrder = getValidOrder(orderId);
        if (paymentOrder.getStatus() == PaymentStatus.SUCCESS) {
            throw new LeaseException(ResultCodeEnum.REPEAT_SUBMIT);
        }
        if (paymentOrder.getStatus() == PaymentStatus.CLOSED) {
            return;
        }
        paymentOrder.setStatus(PaymentStatus.CLOSED);
        paymentOrder.setSuccessTime(null);
        this.updateById(paymentOrder);
        updateLeasePayment(paymentOrder.getLeaseAgreementId(), PaymentStatus.CLOSED, null);
    }

    /**
     * 标记订单为已支付
     *
     * @param orderId    订单主键
     * @param operatorId 操作人ID
     */
    @Override
    public void markPaid(Long orderId, Long operatorId) {
        PaymentOrder paymentOrder = getValidOrder(orderId);
        if (paymentOrder.getStatus() == PaymentStatus.SUCCESS) {
            return;
        }
        paymentOrder.setStatus(PaymentStatus.SUCCESS);
        paymentOrder.setSuccessTime(new Date());
        this.updateById(paymentOrder);
        updateLeasePayment(paymentOrder.getLeaseAgreementId(), PaymentStatus.SUCCESS, LeaseStatus.SIGNED);
    }

    /**
     * 获取合法支付订单
     *
     * @param orderId 订单主键
     * @return 支付订单实体
     */
    private PaymentOrder getValidOrder(Long orderId) {
        PaymentOrder paymentOrder = this.getById(orderId);
        if (paymentOrder == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        return paymentOrder;
    }

    /**
     * 同步更新租约支付状态
     *
     * @param leaseAgreementId 租约ID
     * @param paymentStatus    支付状态
     * @param leaseStatus      租约状态
     */
    private void updateLeasePayment(Long leaseAgreementId, PaymentStatus paymentStatus, LeaseStatus leaseStatus) {
        if (leaseAgreementId == null) {
            return;
        }
        LambdaUpdateWrapper<LeaseAgreement> wrapper = new LambdaUpdateWrapper<>();
        wrapper.eq(LeaseAgreement::getId, leaseAgreementId)
                .set(LeaseAgreement::getPaymentStatus, paymentStatus);
        if (Objects.nonNull(leaseStatus)) {
            wrapper.set(LeaseAgreement::getStatus, leaseStatus);
        }
        leaseAgreementMapper.update(null, wrapper);
    }
}
