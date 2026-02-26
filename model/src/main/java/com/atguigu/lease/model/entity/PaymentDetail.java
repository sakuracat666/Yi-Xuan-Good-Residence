package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.PayMethod;
import com.atguigu.lease.model.enums.PaymentStatus;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付明细实体
 */
@Data
@TableName("payment_detail")
@Schema(description = "支付明细表")
public class PaymentDetail extends BaseEntity {

  private static final long serialVersionUID = 1L;

  @Schema(description = "支付订单ID")
  @TableField("payment_order_id")
  private Long paymentOrderId;

  @Schema(description = "支付方式：1支付宝 2微信")
  @TableField("pay_method")
  private PayMethod payMethod;

  @Schema(description = "支付金额（元）")
  @TableField("amount")
  private BigDecimal amount;

  @Schema(description = "支付状态：0待支付 1已支付 2已关闭 3已退款")
  @TableField("status")
  private PaymentStatus status;

  @Schema(description = "交易流水号")
  @TableField("transaction_no")
  private String transactionNo;

  @Schema(description = "支付成功时间")
  @TableField("pay_time")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date payTime;

  @Schema(description = "已退款金额")
  @TableField("refund_amount")
  private BigDecimal refundAmount;

  @Schema(description = "退款时间")
  @TableField("refund_time")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date refundTime;
}
