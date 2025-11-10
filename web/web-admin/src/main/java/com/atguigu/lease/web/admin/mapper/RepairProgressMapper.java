package com.atguigu.lease.web.admin.mapper;

import com.atguigu.lease.model.entity.RepairProgress;
import com.atguigu.lease.web.admin.vo.repair.RepairProgressVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 报修进度 Mapper
 */
public interface RepairProgressMapper extends BaseMapper<RepairProgress> {

    /**
     * 查询报修进度列表
     */
    List<RepairProgressVo> listVoByRequestId(Long requestId);
}
