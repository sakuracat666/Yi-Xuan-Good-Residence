package com.atguigu.lease.web.admin.controller.profile;

import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.admin.service.TenantProfileFeatureService;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileDetailVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileItemVo;
import com.atguigu.lease.web.admin.vo.profile.TenantProfileQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "租户画像管理")
@RestController
@RequestMapping("/admin/profile/tenant")
public class TenantProfileController {

    @Autowired
    private TenantProfileFeatureService tenantProfileFeatureService;

    @Operation(summary = "分页查询租户画像")
    @GetMapping("page")
    public Result<IPage<TenantProfileItemVo>> page(@RequestParam long current,
                                                   @RequestParam long size,
                                                   TenantProfileQueryVo queryVo) {
        Page<TenantProfileItemVo> page = new Page<>(current, size);
        IPage<TenantProfileItemVo> result = tenantProfileFeatureService.pageTenantProfiles(page, queryVo);
        return Result.ok(result);
    }

    @Operation(summary = "根据租户ID查询画像详情")
    @GetMapping("detail")
    public Result<TenantProfileDetailVo> detail(@RequestParam Long userId) {
        TenantProfileDetailVo detailVo = tenantProfileFeatureService.getDetailByUserId(userId);
        return Result.ok(detailVo);
    }
}
