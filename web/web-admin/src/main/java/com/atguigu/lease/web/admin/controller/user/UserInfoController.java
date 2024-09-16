package com.atguigu.lease.web.admin.controller.user;


import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.model.entity.UserInfo;
import com.atguigu.lease.model.enums.BaseStatus;
import com.atguigu.lease.web.admin.service.UserInfoService;
import com.atguigu.lease.web.admin.vo.user.UserInfoQueryVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Tag(name = "用户信息管理")
@RestController
@RequestMapping("/admin/user")
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;

    /**
     * 分页查询用户信息
     * 通过分页的方式查询用户信息，支持根据电话号码和状态筛选
     * 使用了条件查询构造器LambdaQueryWrapper来构建查询条件，以支持分页和筛选功能
     *
     * @param current 当前页码，用于分页查询
     * @param size 每页记录数，用于分页查询
     * @param queryVo 查询条件对象，包含电话号码和状态等属性，用于构建查询条件
     * @return 返回分页查询结果，包含用户信息的分页数据
     */
    @Operation(summary = "分页查询用户信息")
    @GetMapping("page")
    public Result<IPage<UserInfo>> pageUserInfo(@RequestParam long current, @RequestParam long size, UserInfoQueryVo queryVo) {
        // 初始化条件查询构造器，用于构建查询条件
        LambdaQueryWrapper<UserInfo> queryWrapper = new LambdaQueryWrapper<>();
        // 根据电话号码构建模糊查询条件，如果电话号码非空
        queryWrapper.like(queryVo.getPhone() != null, UserInfo::getPhone, queryVo.getPhone());
        // 根据状态构建精确查询条件，如果状态非空
        queryWrapper.eq(queryVo.getStatus() != null,UserInfo::getStatus, queryVo.getStatus());
        // 初始化分页对象，指定当前页码和每页记录数
        IPage<UserInfo> page = new Page<>(current, size);

        // 执行分页查询操作，返回分页数据
        IPage<UserInfo> userInfoIPage = userInfoService.page(page, queryWrapper);
        // 封装查询结果，并返回成功响应结果
        return Result.ok(userInfoIPage);
    }


    @Operation(summary = "根据用户id更新账号状态")
    @PostMapping("updateStatusById")
    public Result updateStatusById(@RequestParam Long id, @RequestParam BaseStatus status) {
        return Result.ok();
    }
}
