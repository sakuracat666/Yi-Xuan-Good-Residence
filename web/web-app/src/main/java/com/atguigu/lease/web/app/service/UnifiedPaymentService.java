package com.atguigu.lease.web.app.service;

import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.web.app.vo.payment.*;

/**
 * 统一支付服务接口
 * 支持余额支付、微信支付、混合支付及退款
 */
public interface UnifiedPaymentService {

  /**
   * 获取支付预览信息
   * 展示用户可选的支付方式和建议金额
   *
   * @param loginUser        当前登录用户
   * @param leaseAgreementId 租约ID
   * @return 支付预览信息
   */
  PaymentPreviewVo getPaymentPreview(LoginUser loginUser, Long leaseAgreementId);

  /**
   * 统一支付接口
   * 支持纯余额、纯微信、混合支付三种方式
   *
   * @param loginUser 当前登录用户
   * @param request   支付请求参数
   * @return 支付响应结果
   */
  UnifiedPayResponse unifiedPay(LoginUser loginUser, UnifiedPayRequest request);

  /**
   * 微信支付回调处理
   * 处理微信支付成功后的回调通知
   *
   * @param orderNo 商户订单号
   */
  void handleWechatPayCallback(String orderNo);

  /**
   * 申请退款
   * 根据支付记录原路返回退款
   *
   * @param loginUser 当前登录用户
   * @param request   退款请求参数
   * @return 退款响应结果
   */
  RefundResponse applyRefund(LoginUser loginUser, RefundRequest request);

  /**
   * 查询退款状态
   *
   * @param loginUser 当前登录用户
   * @param refundNo  退款单号
   * @return 退款响应结果
   */
  RefundResponse getRefundStatus(LoginUser loginUser, String refundNo);
}
