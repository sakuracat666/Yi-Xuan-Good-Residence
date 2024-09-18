package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.constant.RedisConstant;
import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.common.utils.JwtUtil;
import com.atguigu.lease.common.utils.VerifyCodeUtil;
import com.atguigu.lease.model.entity.SystemUser;
import com.atguigu.lease.model.entity.UserInfo;
import com.atguigu.lease.model.enums.BaseStatus;
import com.atguigu.lease.web.app.mapper.UserInfoMapper;
import com.atguigu.lease.web.app.service.LoginService;
import com.atguigu.lease.web.app.service.SmsService;
import com.atguigu.lease.web.app.service.UserInfoService;
import com.atguigu.lease.web.app.vo.user.LoginVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
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

    @Autowired
    private UserInfoMapper userInfoMapper;

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



    @Override
    public String login(LoginVo loginVo) {


        //首先校验`phone`和`code`是否为空，若为空，直接响应`手机号码为空`或者`验证码为空`，若不为空则进入下步判断。
        if (loginVo.getPhone() == null) {
            throw new LeaseException(ResultCodeEnum.APP_LOGIN_PHONE_EMPTY);
        }
        if (loginVo.getCode() == null) {
            throw new LeaseException(ResultCodeEnum.APP_LOGIN_CODE_EMPTY);
        }

        //根据`phone`从Redis中查询之前保存的验证码，若查询结果为空，则直接响应`验证码已过期` ，若不为空则进入下一步判断。
        String key = RedisConstant.APP_LOGIN_PREFIX + loginVo.getPhone();
        String code = redisTemplate.opsForValue().get(key);
        if (code == null) {
            throw new LeaseException(ResultCodeEnum.APP_LOGIN_CODE_EXPIRED);
        }

        //比较前端发送的验证码和从Redis中查询出的验证码，若不同，则直接响应`验证码错误`，若相同则进入下一步判断。
        if (!code.equals(loginVo.getCode())){
            throw new LeaseException(ResultCodeEnum.APP_LOGIN_CODE_ERROR);
        }

        //使用`phone`从数据库中查询用户信息，若查询结果为空，则创建新用户，并将用户保存至数据库，然后进入下一步判断。
        LambdaQueryWrapper<UserInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(UserInfo::getPhone, loginVo.getPhone());
        UserInfo userInfo = userInfoMapper.selectOne(queryWrapper);

        if (userInfo == null) {
            // 创建新用户
            userInfo=  new UserInfo();
            userInfo.setPhone(loginVo.getPhone());
            userInfo.setStatus(BaseStatus.ENABLE);
            userInfo.setNickname("用户-"+loginVo.getPhone().substring(7));

            userInfoMapper.insert(userInfo);
        }else {
            //是否禁用
            if (userInfo.getStatus()==BaseStatus.DISABLE){
                throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_DISABLED_ERROR);
            }
        }

        return JwtUtil.createToken(userInfo.getId(), userInfo.getPhone());
    }
}
