package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.RefundStatus;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 退款记录实体
 */
@Data
@TableName("refund_record")
@Schema(description = "退款记录表")
public class RefundRecord extends BaseEntity {

  private static final long serialVersionUID = 1L;

  @Schema(description = "退款单号")
  @TableField("refund_no")
  private String refundNo;

  @Schema(description = "原支付订单ID")
  @TableField("payment_order_id")
  private Long paymentOrderId;

  @Schema(description = "租约ID")
  @TableField("lease_agreement_id")
  private Long leaseAgreementId;

  @Schema(description = "退款总金额（元）")
  @TableField("refund_amount")
  private BigDecimal refundAmount;

  @Schema(description = "余额退款金额")
  @TableField("balance_refund")
  private BigDecimal balanceRefund;

  @Schema(description = "微信退款金额")
  @TableField("wechat_refund")
  private BigDecimal wechatRefund;

  @Schema(description = "退款状态：0处理中 1成功 2失败")
  @TableField("status")
  private RefundStatus status;

  @Schema(description = "退款原因")
  @TableField("reason")
  private String reason;

  @Schema(description = "操作人ID")
  @TableField("operator_id")
  private Long operatorId;

  @Schema(description = "退款成功时间")
  @TableField("success_time")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date successTime;

  @Schema(description = "失败原因")
  @TableField("fail_reason")
  private String failReason;
}
