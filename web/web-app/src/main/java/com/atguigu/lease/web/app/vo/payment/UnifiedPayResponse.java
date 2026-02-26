package com.atguigu.lease.web.app.vo.payment;

import com.atguigu.lease.model.enums.PayMethodCombination;
import com.atguigu.lease.model.enums.PaymentStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 统一支付响应结果
 */
@Data
@Schema(description = "统一支付响应结果")
public class UnifiedPayResponse {

  @Schema(description = "支付订单ID")
  private Long paymentOrderId;

  @Schema(description = "商户订单号")
  private String orderNo;

  @Schema(description = "支付总金额（元）")
  private BigDecimal amountTotal;

  @Schema(description = "支付宝支付金额（元）")
  private BigDecimal alipayAmount;

  @Schema(description = "微信支付金额（元）")
  private BigDecimal wechatAmount;

  @Schema(description = "支付方式组合")
  private PayMethodCombination payMethod;

  @Schema(description = "支付状态")
  private PaymentStatus status;

  @Schema(description = "支付宝是否已支付成功")
  private Boolean alipayPaid;

  @Schema(description = "是否需要支付宝支付")
  private Boolean needAlipayPay;

  @Schema(description = "支付宝H5支付跳转链接（需要支付宝支付时返回）")
  private String alipayH5Url;

  @Schema(description = "支付宝支付二维码链接（需要支付宝支付时返回）")
  private String alipayCodeUrl;

  @Schema(description = "是否需要微信支付")
  private Boolean needWechatPay;

  @Schema(description = "微信H5支付跳转链接（需要微信支付时返回）")
  private String wechatH5Url;

  @Schema(description = "微信支付二维码链接（需要微信支付时返回）")
  private String wechatCodeUrl;

  @Schema(description = "提示信息")
  private String message;
}
