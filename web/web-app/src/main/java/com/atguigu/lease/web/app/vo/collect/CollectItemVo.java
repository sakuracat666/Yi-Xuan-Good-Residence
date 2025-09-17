package com.atguigu.lease.web.app.vo.collect;

import com.atguigu.lease.model.entity.ApartmentInfo;
import com.atguigu.lease.model.entity.LabelInfo;
import com.atguigu.lease.web.app.vo.graph.GraphVo;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 收藏项VO类
 * 用于展示收藏的房间信息
 */
@Schema(description = "收藏房间信息实体")
@Data
public class CollectItemVo {

    /**
     * 收藏记录ID
     */
    @Schema(description = "收藏记录ID")
    private Long collectId;

    /**
     * 房间ID
     */
    @Schema(description = "房间ID")
    private Long roomId;

    /**
     * 房间号
     */
    @Schema(description = "房间号")
    private String roomNumber;

    /**
     * 租金（元/月）
     */
    @Schema(description = "租金（元/月）")
    private BigDecimal rent;

    /**
     * 收藏时间
     */
    @Schema(description = "收藏时间")
    private Date collectTime;

    /**
     * 房间图片列表
     */
    @Schema(description = "房间图片列表")
    private List<GraphVo> graphVoList;

    /**
     * 房间标签列表
     */
    @Schema(description = "房间标签列表")
    private List<LabelInfo> labelInfoList;

    /**
     * 房间所属公寓信息
     */
    @Schema(description = "房间所属公寓信息")
    private ApartmentInfo apartmentInfo;
}