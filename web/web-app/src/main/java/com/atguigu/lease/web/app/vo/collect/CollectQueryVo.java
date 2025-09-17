package com.atguigu.lease.web.app.vo.collect;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 收藏查询VO类
 * 用于收藏列表的查询条件
 */
@Data
@Schema(description = "收藏查询实体")
public class CollectQueryVo {

    @Schema(description = "省份Id")
    private Long provinceId;

    @Schema(description = "城市Id")
    private Long cityId;

    @Schema(description = "区域Id")
    private Long districtId;

    /**
     * 最小租金
     */
    @Schema(description = "最小租金")
    private BigDecimal minRent;

    /**
     * 最大租金
     */
    @Schema(description = "最大租金")
    private BigDecimal maxRent;

    /**
     * 房间名称关键字（用于模糊匹配）
     */
    @Schema(description = "房间名称关键字")
    private String roomName;

    /**
     * 排序方式：desc-降序，asc-升序（按收藏时间）
     */
    @Schema(description = "排序方式", allowableValues = {"desc", "asc"})
    private String orderType = "desc";
}