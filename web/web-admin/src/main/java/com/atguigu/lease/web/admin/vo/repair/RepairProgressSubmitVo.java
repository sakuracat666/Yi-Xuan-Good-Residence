package com.atguigu.lease.web.admin.vo.repair;

import com.atguigu.lease.model.enums.RepairStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

/**
 * 报修进度提交参数
 */
@Data
@Schema(description = "报修进度提交参数")
public class RepairProgressSubmitVo {

    @Schema(description = "报修状态", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "报修状态不能为空")
    private RepairStatus status;

    @Schema(description = "进度描述", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotBlank(message = "进度描述不能为空")
    private String content;
}
