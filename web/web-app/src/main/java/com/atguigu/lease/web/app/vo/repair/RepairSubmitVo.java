package com.atguigu.lease.web.app.vo.repair;

import com.atguigu.lease.model.enums.RepairPriority;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;


import javax.validation.constraints.NotNull;

/**
 * 报修提交入参
 */
@Data
@Schema(description = "报修提交参数对象")
public class RepairSubmitVo {

    @Schema(description = "房间ID", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "房间ID不能为空")
    private Long roomId;

    @Schema(description = "报修标题", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotBlank(message = "报修标题不能为空")
    private String title;

    @Schema(description = "报修描述", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotBlank(message = "报修描述不能为空")
    private String description;

    @Schema(description = "报修优先级", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private RepairPriority priority;

    @Schema(description = "预约上门时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime appointmentTime;

    @Schema(description = "联系电话")
    private String contactPhone;

    @Schema(description = "附件地址列表")
    private List<String> attachmentUrls;
}
