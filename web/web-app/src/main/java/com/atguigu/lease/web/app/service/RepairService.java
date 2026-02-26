package com.atguigu.lease.web.app.service;

import com.atguigu.lease.model.entity.RepairRequest;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.app.vo.repair.RepairDetailVo;
import com.atguigu.lease.web.app.vo.repair.RepairItemVo;
import com.atguigu.lease.web.app.vo.repair.RepairRoomNumberApartIdVo;
import com.atguigu.lease.web.app.vo.repair.RepairSubmitVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 报修业务 Service
 */
public interface RepairService extends IService<RepairRequest> {

    /**
     * 租客提交报修
     */
    void submitRepair(Long userId, RepairSubmitVo submitVo);

    /**
     * 租客分页查询报修列表
     */
    IPage<RepairItemVo> pageUserRepairs(Page<RepairItemVo> page, Long userId, RepairStatus status);

    /**
     * 查询报修详细信息
     */
    RepairDetailVo getRepairDetail(Long userId, Long repairId);

    /**
     * 撤销报修单
     */
    void cancelRepair(Long userId, Long repairId);

    /**
     * 获取所有房间
     */
    List<RepairRoomNumberApartIdVo> getAllRooms(String phone);
}
