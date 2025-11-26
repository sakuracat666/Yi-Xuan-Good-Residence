package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 支付预览信息VO
 * 用于展示用户可选的支付方式和金额
 */
@Data
@Schema(description = "支付预览信息")
public class PaymentPreviewVo {

  @Schema(description = "租约ID")
  private Long leaseAgreementId;

  @Schema(description = "订单总金额（元）")
  private BigDecimal totalAmount;

  @Schema(description = "用户当前可用余额（元）")
  private BigDecimal userBalance;

  @Schema(description = "是否可以使用余额支付")
  private Boolean canUseBalance;

  @Schema(description = "建议余额支付金额（元）- 取余额和订单金额的较小值")
  private BigDecimal suggestBalanceAmount;

  @Schema(description = "建议微信支付金额（元）- 订单金额减去建议余额支付金额")
  private BigDecimal suggestWechatAmount;

  @Schema(description = "是否可以纯余额支付（余额>=订单金额）")
  private Boolean canFullBalancePay;
}
