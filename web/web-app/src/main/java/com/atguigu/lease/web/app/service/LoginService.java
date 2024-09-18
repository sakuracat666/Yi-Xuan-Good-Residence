package com.atguigu.lease.web.app.service;

import com.atguigu.lease.web.app.vo.user.LoginVo;
import com.atguigu.lease.web.app.vo.user.UserInfoVo;

public interface LoginService {
    /**
     * 发送短信验证码
     * @param phone
     */
    void sendCode(String phone);

    /**
     * 登录
     * @param loginVo
     * @return
     */
    String login(LoginVo loginVo);

    /**
     * 根据用户id获取用户信息
     * @param userId
     * @return
     */
    UserInfoVo getUserInfoById(Long userId);
}
