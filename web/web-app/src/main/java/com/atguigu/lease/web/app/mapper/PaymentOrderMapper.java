package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.PaymentOrder;
import com.atguigu.lease.web.app.vo.payment.PaymentHistoryItemVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.math.BigDecimal;
import java.util.List;

/**
 * 支付订单 Mapper
 */
public interface PaymentOrderMapper extends BaseMapper<PaymentOrder> {

    /**
     * 查询指定手机号的已支付账单列表
     *
     * @param phone 租客手机号
     * @return 已支付账单列表
     */
    List<PaymentHistoryItemVo> selectPaidListByPhone(String phone);

    /**
     * 统计指定手机号已支付账单总额
     *
     * @param phone 租客手机号
     * @return 已支付总金额
     */
    BigDecimal sumPaidAmountByPhone(String phone);
}
