package com.atguigu.lease.model.entity;

import com.atguigu.lease.model.enums.RepairStatus;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 报修进度实体
 */
@Data
@TableName("repair_progress")
@Schema(description = "报修进度")
public class RepairProgress extends BaseEntity {

    @TableField("request_id")
    @Schema(description = "报修单ID")
    private Long requestId;

    @TableField("status")
    @Schema(description = "进度对应状态")
    private RepairStatus status;

    @TableField("content")
    @Schema(description = "进度描述")
    private String content;

    @TableField("operator_id")
    @Schema(description = "操作人ID")
    private Long operatorId;

    @TableField("operator_role")
    @Schema(description = "操作人角色")
    private String operatorRole;
}
