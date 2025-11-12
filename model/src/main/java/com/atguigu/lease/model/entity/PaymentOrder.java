package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.PaymentStatus;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付订单实体
 */
@Data
@TableName("payment_order")
@Schema(description = "支付订单信息表")
public class PaymentOrder extends BaseEntity {

    private static final long serialVersionUID = 1L;

    @Schema(description = "商户订单号")
    @TableField("order_no")
    private String orderNo;

    @Schema(description = "租约ID")
    @TableField("lease_agreement_id")
    private Long leaseAgreementId;

    @Schema(description = "订单标题")
    @TableField("subject")
    private String subject;

    @Schema(description = "支付金额（元）")
    @TableField("amount_total")
    private BigDecimal amountTotal;

    @Schema(description = "支付状态")
    @TableField("status")
    private PaymentStatus status;

    @Schema(description = "支付渠道")
    @TableField("pay_channel")
    private String payChannel;

    @Schema(description = "H5 支付跳转链接")
    @TableField("h5_url")
    private String h5Url;

    @Schema(description = "二维码链接")
    @TableField("code_url")
    private String codeUrl;

    @Schema(description = "支付成功时间")
    @TableField("success_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date successTime;

    @Schema(description = "回调内容")
    @TableField("notify_payload")
    private String notifyPayload;
}
