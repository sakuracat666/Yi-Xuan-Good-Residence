package com.atguigu.lease.web.admin.service;

import com.atguigu.lease.model.entity.RepairRequest;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.admin.vo.repair.RepairAssignVo;
import com.atguigu.lease.web.admin.vo.repair.RepairDetailVo;
import com.atguigu.lease.web.admin.vo.repair.RepairItemVo;
import com.atguigu.lease.web.admin.vo.repair.RepairProgressSubmitVo;
import com.atguigu.lease.web.admin.vo.repair.RepairQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 报修管理服务
 */
public interface RepairManageService extends IService<RepairRequest> {

    /**
     * 分页查询报修单列表
     *
     * @param page     分页参数
     * @param queryVo  查询条件
     * @return 报修列表
     */
    IPage<RepairItemVo> pageRepair(Page<RepairItemVo> page, RepairQueryVo queryVo);

    /**
     * 根据ID查询报修详情
     *
     * @param id 报修单ID
     * @return 报修详情
     */
    RepairDetailVo getDetail(Long id);

    /**
     * 指派报修单处理人
     *
     * @param repairId  报修单ID
     * @param assignVo  指派参数
     * @param operatorId 操作人ID
     */
    void assignRepair(Long repairId, RepairAssignVo assignVo, Long operatorId);

    /**
     * 添加报修进度
     *
     * @param repairId    报修单ID
     * @param progressVo  进度参数
     * @param operatorId  操作人ID
     */
    void addProgress(Long repairId, RepairProgressSubmitVo progressVo, Long operatorId);

    /**
     * 更新报修状态
     *
     * @param repairId   报修单ID
     * @param status     新状态
     * @param operatorId 操作人ID
     */
    void updateStatus(Long repairId, RepairStatus status, Long operatorId);
}
