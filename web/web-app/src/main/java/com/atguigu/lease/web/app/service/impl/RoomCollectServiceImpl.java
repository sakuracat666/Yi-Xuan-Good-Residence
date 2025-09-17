package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.model.entity.RoomCollect;
import com.atguigu.lease.web.app.mapper.RoomCollectMapper;
import com.atguigu.lease.web.app.service.RoomCollectService;
import com.atguigu.lease.web.app.vo.collect.CollectItemVo;
import com.atguigu.lease.web.app.vo.collect.CollectQueryVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 房间收藏Service实现类
 * 针对表【room_collect(房间收藏表)】的数据库操作Service实现
 */
@Service
public class RoomCollectServiceImpl extends ServiceImpl<RoomCollectMapper, RoomCollect> implements RoomCollectService {

    @Autowired
    private RoomCollectMapper roomCollectMapper;

    /**
     * 分页查询用户收藏的房间列表
     * @param page 分页对象
     * @param userId 用户ID
     * @param queryVo 查询条件
     * @return 收藏房间列表
     */
    @Override
    public IPage<CollectItemVo> pageCollectItem(Page<CollectItemVo> page, Long userId, CollectQueryVo queryVo) {
        return roomCollectMapper.pageCollectItem(page, userId, queryVo);
    }

    /**
     * 添加或取消收藏
     * @param userId 用户ID
     * @param roomId 房间ID
     * @return 操作结果：true-收藏成功，false-取消收藏成功
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean toggleCollect(Long userId, Long roomId) {
        // 查询是否已存在收藏记录
        RoomCollect existingCollect = roomCollectMapper.selectByUserIdAndRoomId(userId, roomId);
        
        if (existingCollect == null) {
            // 不存在收藏记录，新增收藏
            RoomCollect roomCollect = new RoomCollect();
            roomCollect.setUserId(userId);
            roomCollect.setRoomId(roomId);
            roomCollect.setCollectStatus(1); // 1表示已收藏
            this.save(roomCollect);
            return true; // 返回true表示收藏成功
        } else {
            // 存在收藏记录，切换收藏状态
            Integer newStatus = existingCollect.getCollectStatus() == 1 ? 0 : 1;
            roomCollectMapper.updateCollectStatus(userId, roomId, newStatus);
            return newStatus == 1; // 返回true表示收藏，false表示取消收藏
        }
    }

    /**
     * 检查用户是否已收藏某个房间
     * @param userId 用户ID
     * @param roomId 房间ID
     * @return 是否已收藏
     */
    @Override
    public Boolean isCollected(Long userId, Long roomId) {
        RoomCollect roomCollect = roomCollectMapper.selectByUserIdAndRoomId(userId, roomId);
        return roomCollect != null && roomCollect.getCollectStatus() == 1;
    }

    /**
     * 获取用户收藏数量
     * @param userId 用户ID
     * @return 收藏数量
     */
    @Override
    public Long getCollectCount(Long userId) {
        LambdaQueryWrapper<RoomCollect> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(RoomCollect::getUserId, userId)
                   .eq(RoomCollect::getCollectStatus, 1);
        return this.count(queryWrapper);
    }
}