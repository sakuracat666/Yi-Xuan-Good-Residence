package com.atguigu.lease.web.app.service;

import com.atguigu.lease.model.entity.RoomCollect;
import com.atguigu.lease.web.app.vo.collect.CollectItemVo;
import com.atguigu.lease.web.app.vo.collect.CollectQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 房间收藏Service接口
 * 针对表【room_collect(房间收藏表)】的数据库操作Service
 */
public interface RoomCollectService extends IService<RoomCollect> {

    /**
     * 分页查询用户收藏的房间列表
     * @param page 分页对象
     * @param userId 用户ID
     * @param queryVo 查询条件
     * @return 收藏房间列表
     */
    IPage<CollectItemVo> pageCollectItem(Page<CollectItemVo> page, Long userId, CollectQueryVo queryVo);

    /**
     * 添加或取消收藏
     * @param userId 用户ID
     * @param roomId 房间ID
     * @return 操作结果：true-收藏成功，false-取消收藏成功
     */
    Boolean toggleCollect(Long userId, Long roomId);

    /**
     * 检查用户是否已收藏某个房间
     * @param userId 用户ID
     * @param roomId 房间ID
     * @return 是否已收藏
     */
    Boolean isCollected(Long userId, Long roomId);

    /**
     * 获取用户收藏数量
     * @param userId 用户ID
     * @return 收藏数量
     */
    Long getCollectCount(Long userId);

    /**
     * 批量更新收藏状态
     * @param userId 用户ID
     * @param ids 收藏项ID列表
     * @param status 状态
     * @return 更新记录数
     */
    int updateCollectStatusBatch(Long userId, List<Long> ids, Integer status);
}