package com.atguigu.lease.common.utils;

import java.util.Random;

//验证码工具类
public class VerifyCodeUtil {
    public static String getVerifyCode(int length){
        StringBuilder code = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            code.append(random.nextInt(10));
        }
        return code.toString();
    }
}
