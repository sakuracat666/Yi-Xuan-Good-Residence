package com.atguigu.lease.web.app.vo.bill;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

/**
 * 账单列表VO
 */
@Data
@Schema(description = "账单列表VO")
public class BillListVo {

    @Schema(description = "租约ID")
    private Long leaseAgreementId;

    @Schema(description = "总期数")
    private Integer totalPeriods;

    @Schema(description = "当前期数（最早的待支付期）")
    private Integer currentPeriod;

    @Schema(description = "总租金金额")
    private BigDecimal totalRentAmount;

    @Schema(description = "押金金额")
    private BigDecimal totalDepositAmount;

    @Schema(description = "已支付金额")
    private BigDecimal totalPaidAmount;

    @Schema(description = "账单列表")
    private List<BillItemVo> bills;
}
