package com.atguigu.lease.model.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 房间收藏实体类
 * 用于存储用户对房间的收藏信息
 */
@Schema(description = "房间收藏表")
@TableName(value = "room_collect")
@Data
public class RoomCollect extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 用户ID
     */
    @Schema(description = "用户ID")
    @TableField(value = "user_id")
    private Long userId;

    /**
     * 房间ID
     */
    @Schema(description = "房间ID")
    @TableField(value = "room_id")
    private Long roomId;

    /**
     * 收藏状态：1-已收藏，0-已取消收藏
     */
    @Schema(description = "收藏状态：1-已收藏，0-已取消收藏")
    @TableField(value = "collect_status")
    private Integer collectStatus;
}