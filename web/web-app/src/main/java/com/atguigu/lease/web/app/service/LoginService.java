package com.atguigu.lease.web.app.service;

import com.atguigu.lease.web.app.vo.user.LoginVo;

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
}
