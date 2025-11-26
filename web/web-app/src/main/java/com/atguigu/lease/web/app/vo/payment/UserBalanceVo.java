package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 用户余额信息VO
 */
@Data
@Schema(description = "用户余额信息")
public class UserBalanceVo {

  @Schema(description = "用户ID")
  private Long userId;

  @Schema(description = "当前可用余额（元）")
  private BigDecimal balance;

  @Schema(description = "冻结金额（元）")
  private BigDecimal frozenAmount;

  @Schema(description = "累计充值金额（元）")
  private BigDecimal totalRecharge;

  @Schema(description = "累计消费金额（元）")
  private BigDecimal totalConsume;

  @Schema(description = "累计退款金额（元）")
  private BigDecimal totalRefund;
}
