package com.atguigu.lease.common.login;

/**
 * 管理登录用户信息的ThreadLocal类
 * 该类用于在同一个线程中存储和获取登录用户信息
 */
public class LoginUserHolder {
    // 使用ThreadLocal存储登录用户信息，每个线程都有自己独立的用户信息
    public static ThreadLocal<LoginUser> threadLocal = new ThreadLocal<>();

    /**
     * 设置当前线程的登录用户信息
     * @param loginUser 登录用户信息对象
     */
    public static void setLoginUser(LoginUser loginUser) {
        // 将登录用户信息绑定到当前线程
        threadLocal.set(loginUser);
    }

    /**
     * 获取当前线程的登录用户信息
     * @return 当前线程的登录用户信息对象，如果未设置则返回null
     */
    public static LoginUser getLoginUser() {
        // 从当前线程中获取登录用户信息
        return threadLocal.get();
    }

    /**
     * 清除当前线程的登录用户信息
     * 调用此方法后，当前线程将不再持有任何登录用户信息
     */
    public static void clear() {
        // 移除当前线程的登录用户信息
        threadLocal.remove();
    }
}
