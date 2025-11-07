package com.atguigu.lease.web.app.vo.repair;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
@Schema(description = "房间号及其公寓名称")
public class RepairRoomNumberApartIdVo {

    @Schema(description = "房间ID")
    private Long roomId;

    @Schema(description = "房间号")
    private String roomNumber;

    @Schema(description = "公寓名称")
    private String apartmentName;
}
