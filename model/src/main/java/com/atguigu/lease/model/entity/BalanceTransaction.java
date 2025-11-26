package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.BalanceTransactionType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 余额变动记录实体
 */
@Data
@TableName("balance_transaction")
@Schema(description = "余额变动记录表")
public class BalanceTransaction extends BaseEntity {

  private static final long serialVersionUID = 1L;

  @Schema(description = "用户ID")
  @TableField("user_id")
  private Long userId;

  @Schema(description = "交易流水号")
  @TableField("transaction_no")
  private String transactionNo;

  @Schema(description = "交易类型：1充值 2消费 3退款 4冻结 5解冻")
  @TableField("type")
  private BalanceTransactionType type;

  @Schema(description = "交易金额（元）")
  @TableField("amount")
  private BigDecimal amount;

  @Schema(description = "交易前余额")
  @TableField("balance_before")
  private BigDecimal balanceBefore;

  @Schema(description = "交易后余额")
  @TableField("balance_after")
  private BigDecimal balanceAfter;

  @Schema(description = "关联订单号")
  @TableField("related_order_no")
  private String relatedOrderNo;

  @Schema(description = "备注说明")
  @TableField("remark")
  private String remark;
}
