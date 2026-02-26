package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.PayMethodCombination;
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

    @Schema(description = "租约周期开始日期")
    @TableField("term_start_date")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date termStartDate;

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

    @Schema(description = "支付方式组合：0未选择 1纯支付宝 2纯微信 3混合支付")
    @TableField("pay_method")
    private PayMethodCombination payMethod;

    @Schema(description = "业务类型：1押金 2租金 3押金+租金")
    @TableField("biz_type")
    private Integer bizType;

    @Schema(description = "押金金额")
    @TableField("deposit_amount")
    private BigDecimal depositAmount;

    @Schema(description = "租金金额")
    @TableField("rent_amount")
    private BigDecimal rentAmount;

    @Schema(description = "支付宝支付金额")
    @TableField("balance_amount")
    private BigDecimal balanceAmount;

    @Schema(description = "微信支付金额")
    @TableField("wechat_amount")
    private BigDecimal wechatAmount;

    @Schema(description = "退款状态：0无退款 1部分退款 2全额退款")
    @TableField("refund_status")
    private Integer refundStatus;

    @Schema(description = "已退款金额")
    @TableField("refunded_amount")
    private BigDecimal refundedAmount;

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
