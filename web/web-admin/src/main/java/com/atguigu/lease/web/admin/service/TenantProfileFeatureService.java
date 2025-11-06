package com.atguigu.lease.web.admin.service;

import com.atguigu.lease.model.entity.TenantProfileFeature;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileDetailVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileItemVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.time.LocalDate;

public interface TenantProfileFeatureService extends IService<TenantProfileFeature> {

    /**
     * 分页查询租户画像
     */
    IPage<TenantProfileItemVo> pageTenantProfiles(IPage<TenantProfileItemVo> page, TenantProfileQueryVo queryVo);

    /**
     * 根据租户ID查询画像详情
     */
    TenantProfileDetailVo getDetailByUserId(Long userId);

    /**
     * 刷新指定统计日期的租户画像数据
     */
    void refreshTenantProfiles(LocalDate dataDate);
}
