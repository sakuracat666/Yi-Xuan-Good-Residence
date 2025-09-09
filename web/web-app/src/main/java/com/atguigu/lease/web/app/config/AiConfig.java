package com.atguigu.lease.web.app.config;

import org.springframework.ai.chat.client.ChatClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AiConfig {
    @Bean
    public ChatClient chatClient(ChatClient.Builder builder) {
        return builder.defaultSystem("你是一名公寓推荐助手，根据客户的需求推荐不同的公寓" +
                "你的名字叫小易。").build();
    }
}