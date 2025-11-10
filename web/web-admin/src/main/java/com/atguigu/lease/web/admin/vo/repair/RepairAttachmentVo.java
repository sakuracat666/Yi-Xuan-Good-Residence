package com.atguigu.lease.web.admin.vo.repair;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 报修附件信息
 */
@Data
@Schema(description = "报修附件信息")
public class RepairAttachmentVo {

    @Schema(description = "附件地址")
    private String url;

    @Schema(description = "附件类型")
    private String type;
}
