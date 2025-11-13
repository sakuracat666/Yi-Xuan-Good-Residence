package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 已支付账单条目视图对象
 */
@Data
@Schema(description = "已支付账单条目视图对象")
public class PaymentHistoryItemVo {

    @Schema(description = "支付订单ID")
    private Long id;

    @Schema(description = "商户订单号")
    private String orderNo;

    @Schema(description = "租约ID")
    private Long leaseAgreementId;

    @Schema(description = "账单标题")
    private String subject;

    @Schema(description = "实际支付金额")
    private BigDecimal amountTotal;

    @Schema(description = "支付成功时间")
    private Date successTime;

    @Schema(description = "公寓名称")
    private String apartmentName;

    @Schema(description = "房间号")
    private String roomNumber;
}
