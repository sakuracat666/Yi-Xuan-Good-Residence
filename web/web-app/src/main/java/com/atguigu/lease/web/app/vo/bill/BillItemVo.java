package com.atguigu.lease.web.app.vo.bill;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 账单项VO
 */
@Data
@Schema(description = "账单项VO")
public class BillItemVo {

    @Schema(description = "账单ID")
    private Long id;

    @Schema(description = "第几期")
    private Integer periodIndex;

    @Schema(description = "总期数")
    private Integer totalPeriods;

    @Schema(description = "租金周期开始日期")
    private Date periodStartDate;

    @Schema(description = "租金周期结束日期")
    private Date periodEndDate;

    @Schema(description = "租金月数")
    private Integer rentMonths;

    @Schema(description = "租金金额")
    private BigDecimal rentAmount;

    @Schema(description = "押金金额")
    private BigDecimal depositAmount;

    @Schema(description = "应付总额")
    private BigDecimal totalAmount;

    @Schema(description = "应付日期")
    private Date dueDate;

    @Schema(description = "账单状态：0待支付 1已支付 2已逾期 3已取消")
    private Integer status;

    @Schema(description = "支付时间")
    private Date paidTime;
}
