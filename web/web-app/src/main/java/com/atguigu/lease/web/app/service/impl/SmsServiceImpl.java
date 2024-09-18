package com.atguigu.lease.web.app.service.impl;

import com.aliyun.dysmsapi20170525.Client;
import com.aliyun.dysmsapi20170525.models.SendSmsRequest;
import com.atguigu.lease.web.app.service.SmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SmsServiceImpl implements SmsService {

    @Autowired
    private Client client;
    /**
     * 发送验证码到指定的手机号码
     *
     * @param phone 接收验证码的手机号码
     * @param code 需要发送的验证码
     */
    @Override
    public void sendCode(String phone, String code) {
        // 创建发送短信请求对象
        SendSmsRequest request = new SendSmsRequest();
        // 设置接收短信的手机号码
        request.setPhoneNumbers(phone);
        // 设置短信签名名称
        request.setSignName("阿里云短信测试");
        // 设置短信模板代码
        request.setTemplateCode("SMS_154950909");
        // 设置短信模板参数，将需要发送的验证码放入模板参数中
        request.setTemplateParam("{\"code\":\""+code+"\"}");

        try {
            // 发送短信
            client.sendSms(request);
        } catch (Exception e) {
            // 捕获异常并抛出运行时异常
            throw new RuntimeException(e);
        }
    }

}
