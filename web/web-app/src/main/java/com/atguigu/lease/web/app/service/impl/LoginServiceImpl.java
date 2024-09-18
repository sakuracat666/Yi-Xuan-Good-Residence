package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.constant.RedisConstant;
import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.common.utils.VerifyCodeUtil;
import com.atguigu.lease.web.app.service.LoginService;
import com.atguigu.lease.web.app.service.SmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private SmsService smsService;
    @Autowired
    private StringRedisTemplate redisTemplate;

    /**
     * 发送验证码
     *
     * @param phone 手机号码，用于接收验证码
     *
     * 此方法用于向指定的手机号码发送验证码，并将验证码存储在Redis中以供后续验证
     * 它首先检查是否已经发送过验证码，以及是否达到了可重新发送的时间间隔
     * 如果满足条件，则发送新的验证码，并更新Redis中的验证码和过期时间
     * 否则，将抛出异常提示不能频繁发送验证码
     */
    @Override
    public void sendCode(String phone) {
        // 生成6位验证码
        String code = VerifyCodeUtil.getVerifyCode(6);
        // 构建Redis的键，用于存储验证码
        String key = RedisConstant.APP_LOGIN_PREFIX + phone;

        // 检查Redis中是否存在该手机号对应的验证码
        Boolean hasKey = redisTemplate.hasKey(key);
        if (hasKey) {
            // 如果存在，获取当前验证码的剩余过期时间
            Long ttl = redisTemplate.getExpire(key, TimeUnit.SECONDS);
            // 判断距离验证码过期的时间是否小于重新发送验证码的最小时间间隔
            if (RedisConstant.APP_LOGIN_CODE_TTL_SEC-ttl < RedisConstant.APP_LOGIN_CODE_RESEND_TIME_SEC) {
                // 如果未达到重发时间间隔，抛出异常
                throw new LeaseException(ResultCodeEnum.APP_SEND_SMS_TOO_OFTEN);
            }
        }

        // 发送验证码到指定手机号
        smsService.sendCode(phone, code);
        // 在Redis中存储验证码，设置过期时间
        redisTemplate.opsForValue().set(key, code, RedisConstant.APP_LOGIN_CODE_TTL_SEC, TimeUnit.SECONDS);
    }

}
