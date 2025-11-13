package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

/**
 * 已支付账单汇总视图对象
 */
@Data
@Schema(description = "已支付账单汇总视图对象")
public class PaymentHistorySummaryVo {

    @Schema(description = "已支付账单总金额")
    private BigDecimal totalPaidAmount;

    @Schema(description = "已支付账单详细列表")
    private List<PaymentHistoryItemVo> items;
}
