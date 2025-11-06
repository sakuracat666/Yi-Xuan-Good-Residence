package com.atguigu.lease.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * 租户画像标签宽表实体
 */
@Data
@TableName(value = "tenant_profile_features")
@Schema(description = "租户画像标签宽表")
public class TenantProfileFeature {

    @TableId(value = "user_id", type = IdType.INPUT)
    @Schema(description = "租户ID")
    private Long userId;

    @TableField("phone")
    @Schema(description = "租户手机号")
    private String phone;

    @TableField("nickname")
    @Schema(description = "租户昵称")
    private String nickname;

    @TableField("agreement_id")
    @Schema(description = "关联合同ID")
    private Long agreementId;

    @TableField("apartment_id")
    @Schema(description = "公寓ID")
    private Long apartmentId;

    @TableField("room_id")
    @Schema(description = "房间ID")
    private Long roomId;

    @TableField("lease_start_date")
    @Schema(description = "租期开始日期")
    private LocalDate leaseStartDate;

    @TableField("lease_end_date")
    @Schema(description = "租期结束日期")
    private LocalDate leaseEndDate;

    @TableField("lease_term_months")
    @Schema(description = "租期（月）")
    private Integer leaseTermMonths;

    @TableField("rent_amount")
    @Schema(description = "月租金")
    private BigDecimal rentAmount;

    @TableField("deposit_amount")
    @Schema(description = "押金金额")
    private BigDecimal depositAmount;

    @TableField("payment_type_id")
    @Schema(description = "付款方式ID")
    private Long paymentTypeId;

    @TableField("browse_cnt_30d")
    @Schema(description = "近30天浏览次数")
    private Integer browseCnt30d;

    @TableField("last_browse_time")
    @Schema(description = "最近浏览时间")
    private LocalDateTime lastBrowseTime;

    @TableField("appointment_cnt_30d")
    @Schema(description = "近30天预约次数")
    private Integer appointmentCnt30d;

    @TableField("last_appointment_time")
    @Schema(description = "最近预约时间")
    private LocalDateTime lastAppointmentTime;

    @TableField("activity_level_tag")
    @Schema(description = "活跃度标签")
    private String activityLevelTag;

    @TableField("intention_tag")
    @Schema(description = "租赁意向标签")
    private String intentionTag;

    @TableField("value_level_tag")
    @Schema(description = "价值等级标签")
    private String valueLevelTag;

    @TableField("payment_behavior_tag")
    @Schema(description = "付款行为标签")
    private String paymentBehaviorTag;

    @TableField("data_date")
    @Schema(description = "数据日期")
    private LocalDate dataDate;

    @TableField("created_at")
    @Schema(description = "记录创建时间")
    private LocalDateTime createdAt;

    @TableField("updated_at")
    @Schema(description = "记录更新时间")
    private LocalDateTime updatedAt;
}
