package com.atguigu.lease.web.admin.vo.repair;

import com.atguigu.lease.model.enums.RepairPriority;
import com.atguigu.lease.model.enums.RepairStatus;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

/**
 * 报修分页列表项
 */
@Data
@Schema(description = "报修列表项")
public class RepairItemVo {

    @Schema(description = "报修单ID")
    private Long id;

    @Schema(description = "报修标题")
    private String title;

    @Schema(description = "租客姓名")
    private String userName;

    @Schema(description = "租客手机号")
    private String userPhone;

    @Schema(description = "房间号")
    private String roomNumber;

    @Schema(description = "公寓名称")
    private String apartmentName;

    @Schema(description = "优先级")
    private RepairPriority priority;

    @Schema(description = "状态")
    private RepairStatus status;

    @Schema(description = "预约时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date appointmentTime;

    @Schema(description = "提交时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    @Schema(description = "处理人姓名")
    private String handlerName;

    @Schema(description = "最新进度描述")
    private String latestProgress;
}
