package com.atguigu.lease.web.admin.mapper;

import com.atguigu.lease.model.entity.RepairRequest;
import com.atguigu.lease.web.admin.vo.repair.RepairDetailVo;
import com.atguigu.lease.web.admin.vo.repair.RepairItemVo;
import com.atguigu.lease.web.admin.vo.repair.RepairQueryVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

/**
 * 报修单 Mapper
 */
public interface RepairRequestMapper extends BaseMapper<RepairRequest> {

    /**
     * 分页查询报修列表
     */
    IPage<RepairItemVo> pageRepair(Page<RepairItemVo> page, @Param("queryVo") RepairQueryVo queryVo);

    /**
     * 根据ID查询详情
     */
    RepairDetailVo selectDetailById(@Param("id") Long id);
}
