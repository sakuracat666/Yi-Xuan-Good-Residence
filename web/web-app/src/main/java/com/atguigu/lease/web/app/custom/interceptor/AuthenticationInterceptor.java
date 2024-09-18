package com.atguigu.lease.web.app.custom.interceptor;

import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.utils.JwtUtil;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthenticationInterceptor implements HandlerInterceptor {

    /**
     * 在处理请求之前执行的拦截器方法
     * 该方法主要用于解析用户身份验证信息，并将用户信息设置到线程局部变量中
     *
     * @param request  请求对象，用于获取请求头中的令牌
     * @param response 响应对象，未直接用于此方法中
     * @param handler  处理器对象，未直接用于此方法中
     * @return 返回true继续执行后续请求处理，返回false表示预处理终止请求
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        // 从请求头中获取访问令牌
        String token = request.getHeader("access-token");

        // 解析令牌中的用户信息
        Claims claims = JwtUtil.parseToken(token);
        // 从解析的用户信息中获取用户ID和用户名
        Long userId = claims.get("userId", Long.class);
        String username = claims.get("username", String.class);
        // 将用户ID和用户名封装成LoginUser对象，并设置到线程局部变量中
        LoginUserHolder.setLoginUser(new LoginUser(userId, username));

        // 继续执行后续请求处理
        return true;
    }


    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        LoginUserHolder.clear();
    }
}