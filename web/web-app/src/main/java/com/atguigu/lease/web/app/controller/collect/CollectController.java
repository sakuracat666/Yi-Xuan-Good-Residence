package com.atguigu.lease.web.app.controller.collect;

import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.app.service.RoomCollectService;
import com.atguigu.lease.web.app.vo.collect.CollectItemVo;
import com.atguigu.lease.web.app.vo.collect.CollectQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 房间收藏控制器
 * 提供房间收藏相关的API接口
 */
@Tag(name = "房间收藏管理")
@RestController
@RequestMapping("/app/collect")
public class CollectController {

    @Autowired
    private RoomCollectService roomCollectService;

    /**
     * 分页查询用户收藏的房间列表
     * @param current 当前页码
     * @param size 每页大小
     * @param queryVo 查询条件
     * @return 收藏房间列表
     */
    @Operation(summary = "分页查询收藏房间列表")
    @GetMapping("pageItem")
    public Result<IPage<CollectItemVo>> pageItem(@RequestParam(required = false, defaultValue = "1") Long current,
                                                 @RequestParam(required = false, defaultValue = "10") Long size,
                                                 CollectQueryVo queryVo) {
        // 获取当前登录用户ID
        Long userId = LoginUserHolder.getLoginUser().getUserId();

        // 创建分页对象
        Page<CollectItemVo> page = new Page<>(current, size);

        // 分页查询收藏列表
        IPage<CollectItemVo> result = roomCollectService.pageCollectItem(page, userId, queryVo);

        return Result.ok(result);
    }

    /**
     * 添加或取消收藏
     * @param roomId 房间ID
     * @return 操作结果
     */
    @Operation(summary = "添加或取消收藏")
    @PostMapping("toggle")
    public Result<Boolean> toggleCollect(@RequestParam Long roomId) {
        // 获取当前登录用户ID
        Long userId = LoginUserHolder.getLoginUser().getUserId();

        // 切换收藏状态
        Boolean isCollected = roomCollectService.toggleCollect(userId, roomId);

        return Result.ok(isCollected);
    }

    /**
     * 检查房间是否已收藏
     * @param roomId 房间ID
     * @return 是否已收藏
     */
    @Operation(summary = "检查房间是否已收藏")
    @GetMapping("isCollected")
    public Result<Boolean> isCollected(@RequestParam Long roomId) {
        // 获取当前登录用户ID
        Long userId = LoginUserHolder.getLoginUser().getUserId();

        // 检查是否已收藏
        Boolean isCollected = roomCollectService.isCollected(userId, roomId);

        return Result.ok(isCollected);
    }

    /**
     * 获取用户收藏数量
     * @return 收藏数量
     */
    @Operation(summary = "获取用户收藏数量")
    @GetMapping("count")
    public Result<Long> getCollectCount() {
        // 获取当前登录用户ID
        Long userId = LoginUserHolder.getLoginUser().getUserId();

        // 获取收藏数量
        Long count = roomCollectService.getCollectCount(userId);

        return Result.ok(count);
    }
}