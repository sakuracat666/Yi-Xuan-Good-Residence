package com.atguigu.lease.common.login;

import com.atguigu.lease.model.enums.SystemUserType;
import lombok.Data;

@Data
public class LoginUser {

    private Long userId;
    private String username;
    private SystemUserType userType;

    /**
     * 使用用户ID与用户名初始化登录用户信息
     *
     * @param userId   用户ID
     * @param username 用户名
     */
    public LoginUser(Long userId, String username) {
        this(userId, username, null);
    }

    /**
     * 使用完整信息初始化登录用户信息
     *
     * @param userId   用户ID
     * @param username 用户名
     * @param userType 用户类型
     */
    public LoginUser(Long userId, String username, SystemUserType userType) {
        this.userId = userId;
        this.username = username;
        this.userType = userType;
    }
}