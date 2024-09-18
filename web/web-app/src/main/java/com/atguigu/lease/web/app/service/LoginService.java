package com.atguigu.lease.web.app.service;

public interface LoginService {
    /**
     * 发送短信验证码
     * @param phone
     */
    void sendCode(String phone);
}
