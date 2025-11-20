package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 首页待支付订单提示视图对象
 */
@Data
@Schema(description = "首页待支付订单提示视图对象")
public class HomePendingPaymentVo {

  @Schema(description = "商户订单号")
  private String orderNo;

  @Schema(description = "租约ID")
  private Long leaseAgreementId;

  @Schema(description = "账单标题")
  private String subject;

  @Schema(description = "待支付金额")
  private BigDecimal amountTotal;

  @Schema(description = "公寓名称")
  private String apartmentName;

  @Schema(description = "房间号")
  private String roomNumber;
}
