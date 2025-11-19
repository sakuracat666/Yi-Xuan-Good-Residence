package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.atguigu.lease.model.entity.UserInfo;
import com.atguigu.lease.web.app.service.UserInfoService;
import com.atguigu.lease.web.app.mapper.UserInfoMapper;
import com.atguigu.lease.web.app.vo.user.UserInfoVo;
import com.atguigu.lease.web.app.vo.user.UserSubmitVo;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【user_info(用户信息表)】的数据库操作Service实现
 * @createDate 2023-07-26 11:12:39
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo>
        implements UserInfoService {

    /**
     * 更新当前登录用户的基础资料（昵称、性别、个性签名）
     */
    @Override
    public UserInfoVo updateProfile(Long userId, UserSubmitVo submitVo) {
        UserInfo userInfo = baseMapper.selectById(userId);
        if (userInfo == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        if (submitVo.getNickname() != null) {
            userInfo.setNickname(submitVo.getNickname());
        }
        if (submitVo.getGender() != null) {
            userInfo.setGender(submitVo.getGender());
        }
        if (submitVo.getAvatarUrl() != null) {
            userInfo.setAvatarUrl(submitVo.getAvatarUrl());
        }
        if (submitVo.getSignature() != null) {
            userInfo.setSignature(submitVo.getSignature());
        }

        baseMapper.updateById(userInfo);
        return new UserInfoVo(
                userInfo.getNickname(),
                userInfo.getAvatarUrl(),
                userInfo.getPhone(),
                userInfo.getGender(),
                userInfo.getSignature());
    }
}
