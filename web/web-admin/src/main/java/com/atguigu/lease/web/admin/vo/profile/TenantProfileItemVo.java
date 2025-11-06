package com.atguigu.lease.web.admin.vo.profile;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
@Schema(description = "租户画像列表项")
public class TenantProfileItemVo {

    @Schema(description = "租户ID")
    private Long userId;

    @Schema(description = "租户手机号")
    private String phone;

    @Schema(description = "租户昵称")
    private String nickname;

    @Schema(description = "活跃度标签")
    private String activityLevelTag;

    @Schema(description = "租赁意向标签")
    private String intentionTag;

    @Schema(description = "价值等级标签")
    private String valueLevelTag;

    @Schema(description = "付款行为标签")
    private String paymentBehaviorTag;

    @Schema(description = "近30天浏览次数")
    private Integer browseCnt30d;

    @Schema(description = "近30天预约次数")
    private Integer appointmentCnt30d;

    @Schema(description = "月租金")
    private BigDecimal rentAmount;

    @Schema(description = "数据日期")
    private LocalDate dataDate;
}
