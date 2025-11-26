package com.atguigu.lease.web.app.controller.payment;

import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.app.service.UnifiedPaymentService;
import com.atguigu.lease.web.app.service.UserBalanceService;
import com.atguigu.lease.web.app.vo.payment.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 统一支付接口
 * 支持余额支付、微信支付、混合支付及退款
 */
@RestController
@RequestMapping("/app/payment/unified")
@Tag(name = "统一支付管理")
public class UnifiedPaymentController {

  @Autowired
  private UnifiedPaymentService unifiedPaymentService;

  @Autowired
  private UserBalanceService userBalanceService;

  /**
   * 获取支付预览信息
   * 展示用户可选的支付方式和建议金额
   *
   * @param leaseAgreementId 租约ID
   * @return 支付预览信息
   */
  @Operation(summary = "获取支付预览信息")
  @GetMapping("/preview/{leaseAgreementId}")
  public Result<PaymentPreviewVo> getPaymentPreview(
      @Parameter(description = "租约ID") @PathVariable Long leaseAgreementId) {
    LoginUser loginUser = LoginUserHolder.getLoginUser();
    PaymentPreviewVo previewVo = unifiedPaymentService.getPaymentPreview(loginUser, leaseAgreementId);
    return Result.ok(previewVo);
  }

  /**
   * 统一支付接口
   * 支持纯余额、纯微信、混合支付三种方式
   *
   * @param request 支付请求参数
   * @return 支付响应结果
   */
  @Operation(summary = "统一支付")
  @PostMapping("/pay")
  public Result<UnifiedPayResponse> unifiedPay(@Valid @RequestBody UnifiedPayRequest request) {
    LoginUser loginUser = LoginUserHolder.getLoginUser();
    UnifiedPayResponse response = unifiedPaymentService.unifiedPay(loginUser, request);
    return Result.ok(response);
  }

  /**
   * 模拟微信支付成功回调
   * 用于测试，实际项目中由微信服务器回调
   *
   * @param orderNo 商户订单号
   * @return 操作结果
   */
  @Operation(summary = "模拟微信支付成功回调")
  @PostMapping("/wechat/callback/{orderNo}")
  public Result<Void> mockWechatPayCallback(
      @Parameter(description = "商户订单号") @PathVariable String orderNo) {
    unifiedPaymentService.handleWechatPayCallback(orderNo);
    return Result.ok();
  }

  /**
   * 申请退款
   * 根据支付记录原路返回退款
   *
   * @param request 退款请求参数
   * @return 退款响应结果
   */
  @Operation(summary = "申请退款")
  @PostMapping("/refund")
  public Result<RefundResponse> applyRefund(@Valid @RequestBody RefundRequest request) {
    LoginUser loginUser = LoginUserHolder.getLoginUser();
    RefundResponse response = unifiedPaymentService.applyRefund(loginUser, request);
    return Result.ok(response);
  }

  /**
   * 查询退款状态
   *
   * @param refundNo 退款单号
   * @return 退款响应结果
   */
  @Operation(summary = "查询退款状态")
  @GetMapping("/refund/{refundNo}")
  public Result<RefundResponse> getRefundStatus(
      @Parameter(description = "退款单号") @PathVariable String refundNo) {
    LoginUser loginUser = LoginUserHolder.getLoginUser();
    RefundResponse response = unifiedPaymentService.getRefundStatus(loginUser, refundNo);
    return Result.ok(response);
  }

  /**
   * 获取用户余额信息
   *
   * @return 用户余额信息
   */
  @Operation(summary = "获取用户余额信息")
  @GetMapping("/balance")
  public Result<UserBalanceVo> getUserBalance() {
    LoginUser loginUser = LoginUserHolder.getLoginUser();
    // 根据手机号获取用户ID
    Long userId = loginUser.getUserId();
    UserBalanceVo balanceVo = userBalanceService.getUserBalance(userId);
    return Result.ok(balanceVo);
  }
}
