package com.atguigu.lease.web.admin.custom.interceptor;

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
     * 该方法用于从请求中提取用户身份信息，并将其设置到线程局部变量中
     *
     * @param request  HTTP请求对象，用于获取JWT令牌
     * @param response HTTP响应对象，未直接使用，但拦截器方法签名所需
     * @param handler  请求处理程序，未直接使用，但拦截器方法签名所需
     * @return 返回true继续请求处理，返回false阻止请求继续处理
     * @throws Exception 如果解析令牌或设置用户信息过程中发生错误，则可能抛出异常
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // 从请求头中获取JWT令牌
        String token = request.getHeader("access-token");

        // 解析令牌，验证其有效性并获取其中的用户信息
        Claims claims = JwtUtil.parseToken(token);
        // 从解析后的claims中提取用户ID和用户名
        Long userId = claims.get("userId", Long.class);
        String username = claims.get("username", String.class);
        // 创建LoginUser对象，包含用户ID和用户名，并将其设置到线程局部变量中
        LoginUserHolder.setLoginUser(new LoginUser(userId, username));

        // 继续请求处理，返回true
        return true;

    }


    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        LoginUserHolder.clear();
    }
}
