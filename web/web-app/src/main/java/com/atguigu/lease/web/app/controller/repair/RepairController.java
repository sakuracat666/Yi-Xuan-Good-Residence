package com.atguigu.lease.web.app.controller.repair;

import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.model.entity.RoomInfo;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.app.service.RepairService;
import com.atguigu.lease.web.app.vo.repair.RepairDetailVo;
import com.atguigu.lease.web.app.vo.repair.RepairItemVo;
import com.atguigu.lease.web.app.vo.repair.RepairRoomNumberApartIdVo;
import com.atguigu.lease.web.app.vo.repair.RepairSubmitVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;

import java.util.List;

/**
 * APP端报修接口
 */
@Tag(name = "报修管理")
@RestController
@RequestMapping("/app/repair")
@Validated
public class RepairController {

    @Autowired
    private RepairService repairService;

    /**
     * 租客提交报修
     */
    @Operation(summary = "提交报修")
    @PostMapping
    public Result<Void> submitRepair(@Valid @RequestBody RepairSubmitVo submitVo) {
        Long userId = LoginUserHolder.getLoginUser().getUserId();
        repairService.submitRepair(userId, submitVo);
        return Result.ok();
    }

    /**
     * 租客分页查询报修列表
     */
    @Operation(summary = "分页查询报修列表")
    @GetMapping("/page")
    public Result<IPage<RepairItemVo>> pageRepairs(
            @RequestParam(defaultValue = "1") @Min(value = 1, message = "页码必须大于等于1") Long current,
            @RequestParam(defaultValue = "10") @Min(value = 1, message = "分页大小必须大于等于1") Long size,
            @RequestParam(required = false) RepairStatus status) {
        Long userId = LoginUserHolder.getLoginUser().getUserId();
        Page<RepairItemVo> page = new Page<>(current, size);
        IPage<RepairItemVo> pageResult = repairService.pageUserRepairs(page, userId, status);
        return Result.ok(pageResult);
    }

    /**
     * 根据报修ID查询详情
     */
    @Operation(summary = "查询报修详情")
    @GetMapping("/{id}")
    public Result<RepairDetailVo> getRepairDetail(@PathVariable Long id) {
        Long userId = LoginUserHolder.getLoginUser().getUserId();
        RepairDetailVo detailVo = repairService.getRepairDetail(userId, id);
        return Result.ok(detailVo);
    }

    /**
     * 撤销报修
     */
    @Operation(summary = "撤销报修")
    @PostMapping("/{id}/cancel")
    public Result<Void> cancelRepair(@PathVariable Long id) {
        Long userId = LoginUserHolder.getLoginUser().getUserId();
        repairService.cancelRepair(userId, id);
        return Result.ok();
    }

    /**
     * 获取所有的房间信息
     */
    @Operation(summary = "获取所有的房间信息")
    @GetMapping("/rooms")
    public Result<List<RepairRoomNumberApartIdVo>> getAllRooms() {
        String phone = LoginUserHolder.getLoginUser().getUsername();
        List<RepairRoomNumberApartIdVo> rooms = repairService.getAllRooms(phone);
        return Result.ok(rooms);
    }
}
