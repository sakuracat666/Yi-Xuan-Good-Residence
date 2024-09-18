package com.atguigu.lease.common.sms;

import com.aliyun.dysmsapi20170525.Client;
import com.aliyun.teaopenapi.models.Config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// 配置类，用于开启阿里云短信服务
@Configuration
// 启用配置属性，将阿里云短信服务的配置属性绑定到Spring的配置中
@EnableConfigurationProperties(AliyunSMSProperties.class)
// 当配置文件中存在指定属性时，条件性加载该配置类
@ConditionalOnProperty(name = "aliyun.sms.endpoint")
public class AliyunSmsConfiguration {

    @Autowired
    private AliyunSMSProperties properties;

    /**
     * 创建并配置一个用于发送短信的Client实例
     *
     * @return 配置好的Client实例，用于发送短信
     */
    @Bean
    public Client smsClient() {
        // 初始化配置对象
        Config config = new Config();
        // 设置访问密钥ID
        config.setAccessKeyId(properties.getAccessKeyId());
        // 设置访问密钥秘密
        config.setAccessKeySecret(properties.getAccessKeySecret());
        // 设置服务端点
        config.setEndpoint(properties.getEndpoint());
        try {
            // 使用配置创建Client实例
            return new Client(config);
        } catch (Exception e) {
            // 如果创建过程中发生异常，转换为运行时异常抛出
            throw new RuntimeException(e);
        }
    }

}