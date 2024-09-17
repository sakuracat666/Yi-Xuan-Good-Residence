package com.atguigu.lease.web.admin.custom.interceptor;

import com.atguigu.lease.common.utils.JwtUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthenticationInterceptor implements HandlerInterceptor {
    /**
     * 在处理请求前执行的方法
     * 该方法用于验证请求中的令牌是否有效
     *
     * @param request  HTTP请求对象，用于获取请求中的令牌
     * @param response HTTP响应对象，未直接用于此方法中
     * @param handler  请求处理对象，未直接用于此方法中
     * @return boolean 始终返回true，表示令牌验证后继续处理请求
     * @throws Exception 如果令牌解析失败或令牌无效，可能会抛出异常
     *
     * 说明：
     * 1. 从请求头中获取名为"access-token"的令牌
     * 2. 使用JwtUtil工具类解析令牌，验证其有效性
     * 3. 如果令牌有效，方法返回true，允许请求继续
     *    如果令牌无效，JwtUtil会抛出异常，从而中断请求处理
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 从请求头获取令牌
        String token = request.getHeader("access-token");
        // 解析并验证令牌
        JwtUtil.parseToken(token);
        // 令牌验证成功，允许继续处理请求
        return true;
    }

}
