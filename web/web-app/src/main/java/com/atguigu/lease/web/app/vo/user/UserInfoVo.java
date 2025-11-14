package com.atguigu.lease.web.app.vo.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;

@Schema(description = "用户基本信息")
@Data
@AllArgsConstructor
public class UserInfoVo {

    @Schema(description = "用户昵称")
    private String nickname;

    @Schema(description = "用户头像")
    private String avatarUrl;

    @Schema(description = "手机号")
    private String phone;

    @Schema(description = "性别：0-保密 1-男 2-女")
    private Integer gender;

    @Schema(description = "个性签名")
    private String signature;

}