package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付预览信息VO
 * 用于展示用户可选的支付方式和金额
 */
@Data
@Schema(description = "支付预览信息")
public class PaymentPreviewVo {

  @Schema(description = "租约ID")
  private Long leaseAgreementId;

  @Schema(description = "本次应付总金额（元）")
  private BigDecimal totalAmount;

  @Schema(description = "本次应付押金金额（元）")
  private BigDecimal depositAmount;

  @Schema(description = "本次应付租金金额（元）")
  private BigDecimal rentAmount;

  @Schema(description = "本次租金已抵扣押金金额（元）")
  private BigDecimal depositOffset;

  @Schema(description = "当前支付阶段")
  private PaymentStage stage;

  @Schema(description = "是否允许发起支付")
  private Boolean canPay;

  @Schema(description = "支付截止时间（仅租金补缴阶段可能返回）")
  private Date payDeadline;
}
