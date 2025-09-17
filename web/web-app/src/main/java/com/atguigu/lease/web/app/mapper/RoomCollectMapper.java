package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.RoomCollect;
import com.atguigu.lease.web.app.vo.collect.CollectItemVo;
import com.atguigu.lease.web.app.vo.collect.CollectQueryVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 房间收藏Mapper接口
 * 针对表【room_collect(房间收藏表)】的数据库操作Mapper
 */
public interface RoomCollectMapper extends BaseMapper<RoomCollect> {

    /**
     * 分页查询用户收藏的房间列表
     * @param page 分页对象
     * @param userId 用户ID
     * @param queryVo 查询条件
     * @return 收藏房间列表
     */
    IPage<CollectItemVo> pageCollectItem(Page<CollectItemVo> page, @Param("userId") Long userId, @Param("queryVo") CollectQueryVo queryVo);

    /**
     * 检查用户是否已收藏某个房间
     * @param userId 用户ID
     * @param roomId 房间ID
     * @return 收藏记录
     */
    RoomCollect selectByUserIdAndRoomId(@Param("userId") Long userId, @Param("roomId") Long roomId);

    /**
     * 更新收藏状态
     * @param userId 用户ID
     * @param roomId 房间ID
     * @param collectStatus 收藏状态
     * @return 影响行数
     */
    int updateCollectStatus(@Param("userId") Long userId, @Param("roomId") Long roomId, @Param("collectStatus") Integer collectStatus);

    /**
     * 查询房间图片列表
     * @param roomId 房间ID
     * @return 图片列表
     */
    List<com.atguigu.lease.web.app.vo.graph.GraphVo> selectGraphVoListByRoomId(@Param("room_id") Long roomId);

    /**
     * 查询房间标签列表
     * @param roomId 房间ID
     * @return 标签列表
     */
    List<com.atguigu.lease.model.entity.LabelInfo> selectLabelInfoListByRoomId(@Param("room_id") Long roomId);
}