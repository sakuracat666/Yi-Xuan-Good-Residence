package com.atguigu.lease.web.admin.service.impl;

import com.atguigu.lease.common.constant.RedisConstant;
import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.common.utils.JwtUtil;
import com.atguigu.lease.model.entity.SystemUser;
import com.atguigu.lease.model.entity.UserInfo;
import com.atguigu.lease.model.enums.BaseStatus;
import com.atguigu.lease.web.admin.mapper.SystemUserMapper;
import com.atguigu.lease.web.admin.service.LoginService;
import com.atguigu.lease.web.admin.service.UserInfoService;
import com.atguigu.lease.web.admin.vo.login.CaptchaVo;
import com.atguigu.lease.web.admin.vo.login.LoginVo;
import com.atguigu.lease.web.admin.vo.system.user.SystemUserInfoVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.wf.captcha.SpecCaptcha;
import org.apache.commons.codec.digest.DigestUtils;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private StringRedisTemplate redisTemplate;
    @Autowired
    private SystemUserMapper systemUserMapper;
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


    @Override
    public String login(LoginVo loginVo) {
        //1.判断`captchaCode`是否为空，若为空，则直接响应`验证码为空`；若不为空进行下一步判断。
        if (loginVo.getCaptchaCode()==null){
            throw new LeaseException(ResultCodeEnum.ADMIN_CAPTCHA_CODE_NOT_FOUND);
        }

        //2.根据`captchaKey`从Redis中查询之前保存的`code`，若查询出来的`code`为空，则直接响应`验证码已过期`；若不为空进行下一步判断。
        String code = redisTemplate.opsForValue().get(loginVo.getCaptchaKey());
        if (code==null){
            throw new LeaseException(ResultCodeEnum.ADMIN_CAPTCHA_CODE_EXPIRED);
        }

        //3.比较`captchaCode`和`code`，若不相同，则直接响应`验证码不正确`；若相同则进行下一步判断。
        if (!loginVo.getCaptchaCode().toLowerCase().equals(code)){
            throw new LeaseException(ResultCodeEnum.ADMIN_CAPTCHA_CODE_ERROR);
        }

        //4.根据`username`查询数据库，若查询结果为空，则直接响应`账号不存在`；若不为空则进行下一步判断。
        SystemUser systemUser = systemUserMapper.selectOneByUsername(loginVo.getUsername());
        if (systemUser==null){
            throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_NOT_EXIST_ERROR);
        }

        //5.查看用户状态，判断是否被禁用，若禁用，则直接响应`账号被禁`；若未被禁用，则进行下一步判断。
        BaseStatus status = systemUser.getStatus();
        if (status== BaseStatus.DISABLE){
            throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_DISABLED_ERROR);
        }

        //6.比对`password`和数据库中查询的密码，若不一致，则直接响应`账号或密码错误`，若一致则进行入最后一步。
        String password = DigestUtils.md5Hex(loginVo.getPassword());
        if (!password.equals(systemUser.getPassword())){
            throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_ERROR);
        }

        //7.创建JWT，并响应给浏览器。
        return JwtUtil.createToken(systemUser.getId(), systemUser.getUsername());
    }

}
