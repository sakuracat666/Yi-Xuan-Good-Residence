package com.atguigu.lease.web.admin.controller.lease;

import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.admin.service.RepairManageService;
import com.atguigu.lease.web.admin.vo.repair.RepairAssignVo;
import com.atguigu.lease.web.admin.vo.repair.RepairDetailVo;
import com.atguigu.lease.web.admin.vo.repair.RepairItemVo;
import com.atguigu.lease.web.admin.vo.repair.RepairProgressSubmitVo;
import com.atguigu.lease.web.admin.vo.repair.RepairQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * 报修管理
 */
@Tag(name = "报修管理")
@RestController
@RequestMapping("/admin/repair")
@Validated
public class RepairManageController {

    @Autowired
    private RepairManageService repairManageService;

    @Operation(summary = "分页查询报修列表")
    @GetMapping("/page")
    public Result<IPage<RepairItemVo>> page(@RequestParam(defaultValue = "1") @Min(value = 1, message = "页码必须大于等于1") Long current,
                                            @RequestParam(defaultValue = "10") @Min(value = 1, message = "分页大小必须大于等于1") Long size,
                                            RepairQueryVo queryVo) {
        Page<RepairItemVo> page = new Page<>(current, size);
        IPage<RepairItemVo> result = repairManageService.pageRepair(page, queryVo);
        return Result.ok(result);
    }

    @Operation(summary = "查询报修详情")
    @GetMapping("/{id}")
    public Result<RepairDetailVo> getDetail(@PathVariable Long id) {
        RepairDetailVo detail = repairManageService.getDetail(id);
        return Result.ok(detail);
    }

    @Operation(summary = "指派报修")
    @PostMapping("/{id}/assign")
    public Result<Void> assign(@PathVariable Long id, @Valid @RequestBody RepairAssignVo assignVo) {
        Long operatorId = LoginUserHolder.getLoginUser().getUserId();
        repairManageService.assignRepair(id, assignVo, operatorId);
        return Result.ok();
    }

    @Operation(summary = "新增报修进度")
    @PostMapping("/{id}/progress")
    public Result<Void> addProgress(@PathVariable Long id, @Valid @RequestBody RepairProgressSubmitVo progressVo) {
        Long operatorId = LoginUserHolder.getLoginUser().getUserId();
        repairManageService.addProgress(id, progressVo, operatorId);
        return Result.ok();
    }

    @Operation(summary = "更新报修状态")
    @PostMapping("/{id}/status")
    public Result<Void> updateStatus(@PathVariable Long id, @RequestParam RepairStatus status) {
        Long operatorId = LoginUserHolder.getLoginUser().getUserId();
        repairManageService.updateStatus(id, status, operatorId);
        return Result.ok();
    }
}
