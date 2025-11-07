package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.RepairRequest;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.app.vo.repair.RepairItemVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

/**
 * 报修单 Mapper
 */
public interface RepairRequestMapper extends BaseMapper<RepairRequest> {

    /**
     * 分页查询租客报修列表
     */
    IPage<RepairItemVo> pageUserRepairs(Page<RepairItemVo> page,
                                        @Param("userId") Long userId,
                                        @Param("status") RepairStatus status);
}
