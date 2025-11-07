package com.atguigu.lease.web.app.vo.repair;

import com.atguigu.lease.model.enums.RepairPriority;
import com.atguigu.lease.model.enums.RepairStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

/**
 * 报修列表项
 */
@Data
@Schema(description = "报修列表项信息")
public class RepairItemVo {

    @Schema(description = "报修单ID")
    private Long id;

    @Schema(description = "报修标题")
    private String title;

    @Schema(description = "报修优先级")
    private RepairPriority priority;

    @Schema(description = "报修状态")
    private RepairStatus status;

    @Schema(description = "预约上门时间")
    private Date appointmentTime;

    @Schema(description = "提交时间")
    private Date createTime;

    @Schema(description = "最新进度描述")
    private String latestProgress;
}
