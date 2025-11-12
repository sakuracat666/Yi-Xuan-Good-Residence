package com.atguigu.lease.web.app.service;

import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.model.entity.PaymentOrder;
import com.atguigu.lease.web.app.vo.payment.PaymentCreateRequest;

/**
 * 支付业务接口
 */
public interface PaymentService {

    /**
     * 创建支付订单
     *
     * @param loginUser 当前登录用户
     * @param request   下单请求参数
     * @return 支付订单信息
     */
    PaymentOrder createPaymentOrder(LoginUser loginUser, PaymentCreateRequest request);

    /**
     * 根据订单号获取支付订单
     *
     * @param loginUser 当前登录用户
     * @param orderNo   商户订单号
     * @return 支付订单信息
     */
    PaymentOrder getPaymentOrder(LoginUser loginUser, String orderNo);

    /**
     * 模拟支付成功
     *
     * @param orderNo 商户订单号
     */
    void mockPaySuccess(String orderNo);
}
