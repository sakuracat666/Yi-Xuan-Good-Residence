package com.atguigu.lease.web.admin.vo.repair;

import com.atguigu.lease.model.enums.RepairStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

/**
 * 报修进度信息
 */
@Data
@Schema(description = "报修进度信息")
public class RepairProgressVo {

    @Schema(description = "进度状态")
    private RepairStatus status;

    @Schema(description = "进度描述")
    private String content;

    @Schema(description = "操作人角色")
    private String operatorRole;

    @Schema(description = "操作人姓名")
    private String operatorName;

    @Schema(description = "创建时间")
    private Date createTime;
}
