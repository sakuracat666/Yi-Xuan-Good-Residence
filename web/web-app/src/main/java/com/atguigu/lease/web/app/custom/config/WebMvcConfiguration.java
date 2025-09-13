package com.atguigu.lease.web.app.custom.config;

import com.atguigu.lease.web.app.custom.interceptor.AuthenticationInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {

    @Autowired
    private AuthenticationInterceptor authenticationInterceptor;

    /**
     * 重写addInterceptors方法，添加拦截器配置
     *
     * @param registry 拦截器注册对象，用于注册拦截器及其适用路径
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册authenticationInterceptor拦截器，并配置其拦截路径和排除路径
        registry.addInterceptor(this.authenticationInterceptor)
                .addPathPatterns("/app/**") // 设置拦截器拦截所有/app/**路径下的请求
                .excludePathPatterns("/app/login/**").// 排除/app/login/**路径下的请求，以便放行登录相关请求
                excludePathPatterns("/app/ai/**");

    }

}
