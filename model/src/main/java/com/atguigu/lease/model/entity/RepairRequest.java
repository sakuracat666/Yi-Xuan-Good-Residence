package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.RepairPriority;
import com.atguigu.lease.model.enums.RepairStatus;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

/**
 * 报修单实体
 */
@Data
@TableName("repair_request")
@Schema(description = "报修单")
public class RepairRequest extends BaseEntity {

    @TableField("user_id")
    @Schema(description = "报修人ID")
    private Long userId;

    @TableField("room_id")
    @Schema(description = "房间ID")
    private Long roomId;

    @TableField("title")
    @Schema(description = "报修标题")
    private String title;

    @TableField("description")
    @Schema(description = "报修描述")
    private String description;

    @TableField("priority")
    @Schema(description = "报修优先级")
    private RepairPriority priority;

    @TableField("status")
    @Schema(description = "报修状态")
    private RepairStatus status;

    @TableField("appointment_time")
    @Schema(description = "预约上门时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date appointmentTime;

    @TableField("contact_phone")
    @Schema(description = "联系方式")
    private String contactPhone;

    @TableField("handler_id")
    @Schema(description = "处理人ID")
    private Long handlerId;

    @TableField("finish_time")
    @Schema(description = "完结时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date finishTime;

    @TableField("remark")
    @Schema(description = "备注信息")
    private String remark;
}
