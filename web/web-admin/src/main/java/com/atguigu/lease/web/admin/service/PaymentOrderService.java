package com.atguigu.lease.web.admin.service;

import com.atguigu.lease.web.admin.vo.payment.PaymentOrderDetailVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderItemVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

/**
 * 支付订单管理服务
 */
public interface PaymentOrderService {

    /**
     * 分页查询支付订单
     *
     * @param page    分页参数
     * @param queryVo 查询条件
     * @return 支付订单分页
     */
    IPage<PaymentOrderItemVo> pageOrder(Page<PaymentOrderItemVo> page, PaymentOrderQueryVo queryVo);

    /**
     * 查询支付订单详情
     *
     * @param id 订单主键
     * @return 订单详情
     */
    PaymentOrderDetailVo getDetail(Long id);

    /**
     * 关闭支付订单
     *
     * @param orderId 订单主键
     * @param operatorId 操作人ID
     */
    void closeOrder(Long orderId, Long operatorId);

    /**
     * 标记订单为已支付
     *
     * @param orderId 订单主键
     * @param operatorId 操作人ID
     */
    void markPaid(Long orderId, Long operatorId);
}
