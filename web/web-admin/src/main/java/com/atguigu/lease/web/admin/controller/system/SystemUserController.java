package com.atguigu.lease.web.admin.controller.system;


import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.model.entity.SystemPost;
import com.atguigu.lease.model.entity.SystemUser;
import com.atguigu.lease.model.enums.BaseStatus;
import com.atguigu.lease.web.admin.service.SystemPostService;
import com.atguigu.lease.web.admin.service.SystemUserService;
import com.atguigu.lease.web.admin.vo.system.user.SystemUserItemVo;
import com.atguigu.lease.web.admin.vo.system.user.SystemUserQueryVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Tag(name = "后台用户信息管理")
@RestController
@RequestMapping("/admin/system/user")
public class SystemUserController {


    @Autowired
    private SystemUserService systemUserService;
    @Autowired
    private SystemPostService systemPostService;


    @Operation(summary = "根据条件分页查询后台用户列表")
    @GetMapping("page")
    public Result<IPage<SystemUserItemVo>> page(@RequestParam long current, @RequestParam long size, SystemUserQueryVo queryVo) {
        IPage<SystemUser> page = new Page<>(current, size);
        IPage<SystemUserItemVo> systemUserPage = systemUserService.pageSystemUserByQuery(page, queryVo);
        return Result.ok(systemUserPage);
    }

    @Operation(summary = "根据ID查询后台用户信息")
    @GetMapping("getById")
/**
 * 根据提供的用户ID查询并返回后台用户的详细信息。
 *
 * @param id 用户ID，用于标识需要查询的用户
 * @return 包含用户信息和职位名称的响应结果
 */
    public Result<SystemUserItemVo> getById(@RequestParam Long id) {
        // 初始化用户信息视图对象
        SystemUserItemVo systemUserItemVo = new SystemUserItemVo();
        // 通过ID查询系统用户信息
        SystemUser systemUser = systemUserService.getById(id);
        // 将系统用户信息复制到视图对象
        BeanUtils.copyProperties(systemUser, systemUserItemVo);

        // 初始化查询包装器，用于查询职位信息
        LambdaQueryWrapper<SystemPost> queryWrapper = new LambdaQueryWrapper<>();
        // 设置查询条件：职位ID等于用户关联的职位ID
        queryWrapper.eq(SystemPost::getId, systemUser.getPostId());
        // 通过职位ID查询职位名称
        String postName = systemPostService.getOne(queryWrapper).getName();

        // 将职位名称设置到用户信息视图对象中
        systemUserItemVo.setPostName(postName);

        // 返回查询到的用户信息视图对象
        return Result.ok(systemUserItemVo);
    }


    @Operation(summary = "保存或更新后台用户信息")
    @PostMapping("saveOrUpdate")
    public Result saveOrUpdate(@RequestBody SystemUser systemUser) {
        if (systemUser.getPassword() != null){
            systemUser.setPassword(DigestUtils.md5Hex(systemUser.getPassword()));
        }
        systemUserService.saveOrUpdate(systemUser);
        return Result.ok();
    }

    @Operation(summary = "判断后台用户名是否可用")
    @GetMapping("isUserNameAvailable")
    public Result<Boolean> isUsernameExists(@RequestParam String username) {
        return Result.ok();
    }

    @DeleteMapping("deleteById")
    @Operation(summary = "根据ID删除后台用户信息")
    public Result removeById(@RequestParam Long id) {
        return Result.ok();
    }

    @Operation(summary = "根据ID修改后台用户状态")
    @PostMapping("updateStatusByUserId")
    public Result updateStatusByUserId(@RequestParam Long id, @RequestParam BaseStatus status) {
        return Result.ok();
    }
}
