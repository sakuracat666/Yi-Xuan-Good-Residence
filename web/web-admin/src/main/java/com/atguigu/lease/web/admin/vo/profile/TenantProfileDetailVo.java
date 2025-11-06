package com.atguigu.lease.web.admin.vo.profile;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@Schema(description = "租户画像详情")
public class TenantProfileDetailVo {

    @Schema(description = "租户ID")
    private Long userId;

    @Schema(description = "租户手机号")
    private String phone;

    @Schema(description = "租户昵称")
    private String nickname;

    @Schema(description = "关联合同ID")
    private Long agreementId;

    @Schema(description = "公寓ID")
    private Long apartmentId;

    @Schema(description = "房间ID")
    private Long roomId;

    @Schema(description = "租期开始日期")
    private LocalDate leaseStartDate;

    @Schema(description = "租期结束日期")
    private LocalDate leaseEndDate;

    @Schema(description = "租期（月）")
    private Integer leaseTermMonths;

    @Schema(description = "月租金")
    private BigDecimal rentAmount;

    @Schema(description = "押金金额")
    private BigDecimal depositAmount;

    @Schema(description = "付款方式ID")
    private Long paymentTypeId;

    @Schema(description = "近30天浏览次数")
    private Integer browseCnt30d;

    @Schema(description = "最近浏览时间")
    private LocalDateTime lastBrowseTime;

    @Schema(description = "近30天预约次数")
    private Integer appointmentCnt30d;

    @Schema(description = "最近预约时间")
    private LocalDateTime lastAppointmentTime;

    @Schema(description = "活跃度标签")
    private String activityLevelTag;

    @Schema(description = "租赁意向标签")
    private String intentionTag;

    @Schema(description = "价值等级标签")
    private String valueLevelTag;

    @Schema(description = "付款行为标签")
    private String paymentBehaviorTag;

    @Schema(description = "数据日期")
    private LocalDate dataDate;

    @Schema(description = "记录创建时间")
    private LocalDateTime createdAt;

    @Schema(description = "记录更新时间")
    private LocalDateTime updatedAt;
}
