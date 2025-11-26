package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.PaymentDetail;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 支付明细 Mapper
 */
public interface PaymentDetailMapper extends BaseMapper<PaymentDetail> {

  /**
   * 根据支付订单ID查询支付明细列表
   *
   * @param paymentOrderId 支付订单ID
   * @return 支付明细列表
   */
  List<PaymentDetail> selectByPaymentOrderId(@Param("paymentOrderId") Long paymentOrderId);
}
