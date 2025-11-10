package com.atguigu.lease.web.admin.vo.repair;

import com.atguigu.lease.model.enums.RepairPriority;
import com.atguigu.lease.model.enums.RepairStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 报修详情
 */
@Data
@Schema(description = "报修详情")
public class RepairDetailVo {

    @Schema(description = "报修单ID")
    private Long id;

    @Schema(description = "租客姓名")
    private String userName;

    @Schema(description = "租客手机号")
    private String userPhone;

    @Schema(description = "公寓名称")
    private String apartmentName;

    @Schema(description = "房间号")
    private String roomNumber;

    @Schema(description = "报修标题")
    private String title;

    @Schema(description = "报修描述")
    private String description;

    @Schema(description = "报修优先级")
    private RepairPriority priority;

    @Schema(description = "报修状态")
    private RepairStatus status;

    @Schema(description = "预约上门时间")
    private Date appointmentTime;

    @Schema(description = "联系电话")
    private String contactPhone;

    @Schema(description = "处理人姓名")
    private String handlerName;

    @Schema(description = "完结时间")
    private Date finishTime;

    @Schema(description = "备注信息")
    private String remark;

    @Schema(description = "创建时间")
    private Date createTime;

    @Schema(description = "附件列表")
    private List<RepairAttachmentVo> attachments;

    @Schema(description = "进度记录")
    private List<RepairProgressVo> progresses;
}
