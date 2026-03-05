package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.BillStatus;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 租金账单实体
 */
@Data
@TableName("rent_bill")
@Schema(description = "租金账单表")
public class RentBill extends BaseEntity {

    private static final long serialVersionUID = 1L;

    @Schema(description = "租约ID")
    @TableField("lease_agreement_id")
    private Long leaseAgreementId;

    @Schema(description = "第几期（从1开始）")
    @TableField("period_index")
    private Integer periodIndex;

    @Schema(description = "总期数")
    @TableField("total_periods")
    private Integer totalPeriods;

    @Schema(description = "本期租金周期开始日期")
    @TableField("period_start_date")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date periodStartDate;

    @Schema(description = "本期租金周期结束日期")
    @TableField("period_end_date")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date periodEndDate;

    @Schema(description = "本期租金月数")
    @TableField("rent_months")
    private Integer rentMonths;

    @Schema(description = "本期租金金额")
    @TableField("rent_amount")
    private BigDecimal rentAmount;

    @Schema(description = "本期押金金额（仅第一期）")
    @TableField("deposit_amount")
    private BigDecimal depositAmount;

    @Schema(description = "本期应付总额")
    @TableField("total_amount")
    private BigDecimal totalAmount;

    @Schema(description = "应付日期")
    @TableField("due_date")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date dueDate;

    @Schema(description = "账单状态：0待支付 1已支付 2已逾期 3已取消")
    @TableField("status")
    private BillStatus status;

    @Schema(description = "关联的支付订单ID")
    @TableField("payment_order_id")
    private Long paymentOrderId;

    @Schema(description = "实际支付时间")
    @TableField("paid_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date paidTime;
}
