package com.atguigu.lease.web.admin.vo.repair;

import com.atguigu.lease.model.enums.RepairPriority;
import com.atguigu.lease.model.enums.RepairStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 报修查询条件
 */
@Data
@Schema(description = "报修查询条件")
public class RepairQueryVo {

    @Schema(description = "报修标题")
    private String title;

    @Schema(description = "租客手机号")
    private String userPhone;

    @Schema(description = "公寓名称")
    private String apartmentName;

    @Schema(description = "报修状态")
    private RepairStatus status;

    @Schema(description = "报修优先级")
    private RepairPriority priority;

    @Schema(description = "处理人ID")
    private Long handlerId;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Schema(description = "创建开始时间")
    private Date createTimeBegin;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Schema(description = "创建结束时间")
    private Date createTimeEnd;
}
