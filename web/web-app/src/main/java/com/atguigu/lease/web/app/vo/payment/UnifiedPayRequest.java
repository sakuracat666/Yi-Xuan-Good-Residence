package com.atguigu.lease.web.app.vo.payment;

import com.fasterxml.jackson.annotation.JsonAlias;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 统一支付请求参数
 * 支持支付宝支付、微信支付、混合支付
 */
@Data
@Schema(description = "统一支付请求参数")
public class UnifiedPayRequest {

  @Schema(description = "租约ID", requiredMode = Schema.RequiredMode.REQUIRED)
  @NotNull(message = "租约ID不能为空")
  private Long leaseAgreementId;

  @Schema(description = "支付场景描述，如：押金、续租", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  private String scene;

  @Schema(description = "是否使用支付宝支付", requiredMode = Schema.RequiredMode.REQUIRED)
  @NotNull(message = "请选择是否使用支付宝支付")
  @JsonAlias("useBalance")
  private Boolean useAlipay;

  @Schema(description = "支付宝支付金额（元），useAlipay为true时必填", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @DecimalMin(value = "0", message = "支付宝支付金额不能为负数")
  @JsonAlias("balanceAmount")
  private BigDecimal alipayAmount;

  @Schema(description = "是否使用微信支付", requiredMode = Schema.RequiredMode.REQUIRED)
  @NotNull(message = "请选择是否使用微信支付")
  private Boolean useWechat;

  @Schema(description = "微信支付金额（元），useWechat为true时必填", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @DecimalMin(value = "0", message = "微信支付金额不能为负数")
  private BigDecimal wechatAmount;
}
