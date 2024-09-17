package com.atguigu.lease.web.admin.service.impl;

import com.atguigu.lease.common.constant.RedisConstant;
import com.atguigu.lease.web.admin.service.LoginService;
import com.atguigu.lease.web.admin.vo.login.CaptchaVo;
import com.wf.captcha.SpecCaptcha;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private StringRedisTemplate redisTemplate;
    /**
     * 生成验证码并存储到Redis
     *
     * 本方法通过创建一个指定尺寸和字符数量的图形验证码，将验证码文本以小写形式保存到Redis中，并返回包含验证码图片Base64编码和存储键的Vo对象
     *
     * @return 返回一个包含验证码图片Base64编码和存储验证码文本的Redis键的CaptchaVo对象
     */
    @Override
    public CaptchaVo getCaptcha() {
        // 创建一个尺寸为130x48像素，包含5个字符的特殊验证码对象
        SpecCaptcha specCaptcha = new SpecCaptcha(130, 48, 5);

        // 生成验证码文本并转换为小写形式
        String code = specCaptcha.text().toLowerCase();
        // 生成一个唯一的键，用于在Redis中存储验证码文本
        String key = RedisConstant.ADMIN_LOGIN_PREFIX + UUID.randomUUID();

        // 将验证码文本存储到Redis中，设置过期时间为60秒
        redisTemplate.opsForValue().set(key, code, RedisConstant.ADMIN_LOGIN_CAPTCHA_TTL_SEC, TimeUnit.SECONDS);

        // 返回包含验证码图片Base64编码和存储验证码文本的Redis键的Vo对象
        return new CaptchaVo(specCaptcha.toBase64(), key);
    }

}
