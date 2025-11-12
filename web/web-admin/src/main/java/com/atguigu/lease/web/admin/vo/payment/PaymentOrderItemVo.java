package com.atguigu.lease.web.admin.vo.payment;

import com.atguigu.lease.model.enums.PaymentStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付订单列表视图对象
 */
@Data
@Schema(description = "支付订单列表视图对象")
public class PaymentOrderItemVo {

    @Schema(description = "订单ID")
    private Long id;

    @Schema(description = "商户订单号")
    private String orderNo;

    @Schema(description = "租约ID")
    private Long leaseAgreementId;

    @Schema(description = "租客姓名")
    private String tenantName;

    @Schema(description = "租客手机号")
    private String tenantPhone;

    @Schema(description = "订单标题")
    private String subject;

    @Schema(description = "支付金额")
    private BigDecimal amountTotal;

    @Schema(description = "支付状态")
    private PaymentStatus status;

    @Schema(description = "支付渠道")
    private String payChannel;

    @Schema(description = "支付成功时间")
    private Date successTime;

    @Schema(description = "创建时间")
    private Date createTime;
}
