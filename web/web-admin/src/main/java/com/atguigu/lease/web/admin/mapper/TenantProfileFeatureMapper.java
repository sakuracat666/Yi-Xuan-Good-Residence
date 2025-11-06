package com.atguigu.lease.web.admin.mapper;

import com.atguigu.lease.model.entity.TenantProfileFeature;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileItemVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileQueryVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDate;

/**
 * 租户画像标签宽表 Mapper
 */
public interface TenantProfileFeatureMapper extends BaseMapper<TenantProfileFeature> {

    /**
     * 分页查询租户画像
     */
    IPage<TenantProfileItemVo> pageTenantProfiles(IPage<TenantProfileItemVo> page, TenantProfileQueryVo queryVo);

    /**
     * 按日快照刷新租户画像数据
     */
    int upsertTenantProfiles(@Param("dataDate") LocalDate dataDate);
}
