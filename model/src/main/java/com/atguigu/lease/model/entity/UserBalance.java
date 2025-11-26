package com.atguigu.lease.model.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.Version;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 用户余额实体
 */
@Data
@TableName("user_balance")
@Schema(description = "用户余额表")
public class UserBalance extends BaseEntity {

  private static final long serialVersionUID = 1L;

  @Schema(description = "用户ID")
  @TableField("user_id")
  private Long userId;

  @Schema(description = "当前余额（元）")
  @TableField("balance")
  private BigDecimal balance;

  @Schema(description = "冻结金额（元）")
  @TableField("frozen_amount")
  private BigDecimal frozenAmount;

  @Schema(description = "累计充值金额（元）")
  @TableField("total_recharge")
  private BigDecimal totalRecharge;

  @Schema(description = "累计消费金额（元）")
  @TableField("total_consume")
  private BigDecimal totalConsume;

  @Schema(description = "累计退款金额（元）")
  @TableField("total_refund")
  private BigDecimal totalRefund;

  @Schema(description = "乐观锁版本号")
  @TableField("version")
  @Version
  private Integer version;
}
