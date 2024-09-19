package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.model.entity.BrowsingHistory;
import com.atguigu.lease.web.app.mapper.BrowsingHistoryMapper;
import com.atguigu.lease.web.app.service.BrowsingHistoryService;
import com.atguigu.lease.web.app.vo.history.HistoryItemVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author liubo
 * @description 针对表【browsing_history(浏览历史)】的数据库操作Service实现
 * @createDate 2023-07-26 11:12:39
 */
@Service
public class BrowsingHistoryServiceImpl extends ServiceImpl<BrowsingHistoryMapper, BrowsingHistory>
        implements BrowsingHistoryService {

    @Autowired
    private BrowsingHistoryMapper browsingHistoryMapper;

    @Override
    public IPage<HistoryItemVo> pageHistoryItemByUserId(Page<HistoryItemVo> page, Long userId) {
        return browsingHistoryMapper.pageHistoryItemByUserId(page, userId);
    }

    /**
     * 保存浏览历史记录
     *
     * @param userId 用户ID
     * @param id 房间ID
     *
     * 该方法旨在处理用户浏览房间的历史记录保存逻辑它首先检查该用户是否已经浏览过该房间的历史记录
     * 如果已经存在，则更新浏览时间以保持历史记录的时效性如果不存在，则创建新的浏览历史记录并插入数据库
     */
    @Override
    public void saveHistory(Long userId, Long id) {
        // 构建查询条件，用于查找特定用户和房间的浏览历史
        LambdaQueryWrapper<BrowsingHistory> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(BrowsingHistory::getUserId, userId);
        queryWrapper.eq(BrowsingHistory::getRoomId, id);

        // 根据查询条件获取浏览历史记录
        BrowsingHistory browsingHistory = browsingHistoryMapper.selectOne(queryWrapper);

        // 如果浏览历史记录存在，则更新浏览时间
        if (browsingHistory != null) {
            browsingHistory.setUpdateTime(new Date());
            browsingHistoryMapper.updateById(browsingHistory);
        } else {
            // 如果浏览历史记录不存在，则创建新的浏览历史记录并插入
            BrowsingHistory newBrowsingHistory = new BrowsingHistory();
            newBrowsingHistory.setBrowseTime(new Date());
            newBrowsingHistory.setUserId(userId);
            newBrowsingHistory.setRoomId(id);
            browsingHistoryMapper.insert(newBrowsingHistory);
        }
    }

}