package com.atguigu.lease.web.admin.vo.payment;

import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.model.enums.PayMethodCombination;
import com.atguigu.lease.model.enums.PaymentStatus;
import com.atguigu.lease.model.enums.RefundStatus;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付订单详情视图对象
 */
@Data
@Schema(description = "支付订单详情视图对象")
public class PaymentOrderDetailVo {

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

    @Schema(description = "支付宝支付金额")
    private BigDecimal balanceAmount;

    @Schema(description = "微信支付金额")
    private BigDecimal wechatAmount;

    @Schema(description = "支付方式组合：0-未选择 1-纯支付宝 2-纯微信 3-混合支付")
    private PayMethodCombination payMethod;

    @Schema(description = "支付状态")
    private PaymentStatus status;

    @Schema(description = "退款状态：0-无退款 1-退款中 2-已退款 3-退款失败")
    private RefundStatus refundStatus;

    @Schema(description = "已退款金额")
    private BigDecimal refundedAmount;

    @Schema(description = "支付渠道")
    private String payChannel;

    @Schema(description = "H5 支付链接")
    private String h5Url;

    @Schema(description = "二维码链接")
    private String codeUrl;

    @Schema(description = "支付成功时间")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date successTime;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @Schema(description = "租约状态")
    private LeaseStatus leaseStatus;

    @Schema(description = "租金")
    private BigDecimal rent;

    @Schema(description = "押金")
    private BigDecimal deposit;

    @Schema(description = "公寓名称")
    private String apartmentName;

    @Schema(description = "房间号")
    private String roomNumber;
}
