package com.atguigu.lease.model.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 报修附件实体
 */
@Data
@TableName("repair_attachment")
@Schema(description = "报修附件")
public class RepairAttachment extends BaseEntity {

    @TableField("request_id")
    @Schema(description = "报修单ID")
    private Long requestId;

    @TableField("url")
    @Schema(description = "附件地址")
    private String url;

    @TableField("type")
    @Schema(description = "附件类型")
    private String type;
}
