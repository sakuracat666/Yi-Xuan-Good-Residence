package com.atguigu.lease.web.app.controller.profile;

import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.app.service.UserInfoService;
import com.atguigu.lease.web.app.vo.user.UserInfoVo;
import com.atguigu.lease.web.app.vo.user.UserSubmitVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 账号与资料设置相关接口
 */
@Tag(name = "账号与资料管理")
@RestController
@RequestMapping("/app/user")
public class ProfileController {

  @Autowired
  private UserInfoService userInfoService;

  /**
   * 更新当前登录用户的基础资料（昵称、性别、个性签名）
   */
  @PostMapping("/updateProfile")
  @Operation(summary = "更新用户基础资料")
  public Result<UserInfoVo> updateProfile(@RequestBody UserSubmitVo submitVo) {
    Long userId = LoginUserHolder.getLoginUser().getUserId();
    UserInfoVo userInfoVo = userInfoService.updateProfile(userId, submitVo);
    return Result.ok(userInfoVo);
  }
}
