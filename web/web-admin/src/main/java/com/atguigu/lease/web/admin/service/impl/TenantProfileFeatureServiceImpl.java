package com.atguigu.lease.web.admin.service.impl;

import com.atguigu.lease.model.entity.TenantProfileFeature;
import com.atguigu.lease.web.admin.mapper.TenantProfileFeatureMapper;
import com.atguigu.lease.web.admin.service.TenantProfileFeatureService;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileDetailVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileItemVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
@Slf4j
public class TenantProfileFeatureServiceImpl extends ServiceImpl<TenantProfileFeatureMapper, TenantProfileFeature>
        implements TenantProfileFeatureService {

    @Override
    public IPage<TenantProfileItemVo> pageTenantProfiles(IPage<TenantProfileItemVo> page, TenantProfileQueryVo queryVo) {
        return baseMapper.pageTenantProfiles(page, queryVo);
    }

    @Override
    public TenantProfileDetailVo getDetailByUserId(Long userId) {
        TenantProfileFeature feature = getById(userId);
        if (feature == null) {
            return null;
        }
        TenantProfileDetailVo detailVo = new TenantProfileDetailVo();
        BeanUtils.copyProperties(feature, detailVo);
        return detailVo;
    }


    @Override
    public void refreshTenantProfiles(LocalDate dataDate) {
        int affected = baseMapper.upsertTenantProfiles(dataDate);
        log.info("刷新的租户配置文件快照 {}, rows={}", dataDate, affected);
    }
}
