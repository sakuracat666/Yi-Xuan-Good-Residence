package com.atguigu.lease.web.admin.vo.repair;

import com.atguigu.lease.model.enums.RepairPriority;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 报修指派参数
 */
@Data
@Schema(description = "报修指派参数")
public class RepairAssignVo {

    @Schema(description = "指派的处理人ID", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "处理人ID不能为空")
    private Long handlerId;

    @Schema(description = "预约上门时间")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date appointmentTime;

    @Schema(description = "调整后的优先级")
    private RepairPriority priority;

    @Schema(description = "备注信息")
    private String remark;

    @Schema(description = "进度描述")
    private String content;
}
