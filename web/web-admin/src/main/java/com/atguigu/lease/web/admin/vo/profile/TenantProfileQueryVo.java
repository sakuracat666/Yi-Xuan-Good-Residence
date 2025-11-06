package com.atguigu.lease.web.admin.vo.profile;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@Schema(description = "租户画像查询条件")
public class TenantProfileQueryVo {

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

    @Schema(description = "数据日期-开始")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataDateStart;

    @Schema(description = "数据日期-结束")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataDateEnd;
}
