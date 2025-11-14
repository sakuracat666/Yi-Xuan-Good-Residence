package com.atguigu.lease.web.app.vo.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
@Schema(description = "用户修改信息")
public class UserSubmitVo {

    @Schema(description = "用户昵称")
    private String nickname;

    @Schema(description = "头像图片URL")
    private String avatarUrl;

    @Schema(description = "性别：0-保密 1-男 2-女")
    private Integer gender;

    @Schema(description = "个性签名")
    private String signature;
}
