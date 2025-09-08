package com.atguigu.lease.web.app.config;

import com.baomidou.mybatisplus.autoconfigure.DdlApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MybatisPlusConfig {

    @Bean
    public DdlApplicationRunner ddlApplicationRunner() {
        return new DdlApplicationRunner(null);
    }
}