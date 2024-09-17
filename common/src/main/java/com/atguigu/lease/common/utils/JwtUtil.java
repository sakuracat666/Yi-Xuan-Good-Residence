package com.atguigu.lease.common.utils;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;

import javax.crypto.SecretKey;
import java.util.Date;

public class JwtUtil {
    private static SecretKey secretKey = Keys.hmacShaKeyFor("wOhZtawUZJa4DzRQPgEIcobrDo45L2CT".getBytes());


    /**
     * 创建JWT令牌
     * 该方法用于根据用户ID和用户名生成一个JWT令牌，用于后续的身份验证和授权操作
     *
     * @param userId 用户ID，用于唯一标识系统中的用户
     * @param username 用户名，用于展示或验证用户身份信息
     * @return 返回生成的JWT令牌字符串
     */
    public static String createToken(Long userId, String username) {
        // 构建JWT令牌，设置过期时间、主题、用户信息，并使用HS256算法进行签名
        String jwt = Jwts.builder()
                .setExpiration(new Date(System.currentTimeMillis() + 36000000)) // 设置令牌过期时间为当前时间加上10小时（以毫秒为单位）
                .setSubject("LOGIN_USER") // 设置令牌主题为LOGIN_USER
                .claim("username", username) // 在令牌中添加用户名信息
                .claim("userId", userId) // 在令牌中添加用户ID信息
                .signWith(secretKey, SignatureAlgorithm.HS256) // 使用预定义的密钥和HS256算法对令牌进行签名
                .compact(); // 将构建好的JWT对象压缩为紧凑的字符串表示形式
        return jwt; // 返回生成的JWT令牌
    }


    /**
     * 解析令牌
     * 本函数尝试解析给定的JWT令牌如果令牌过期或无效，将抛出相应的异常
     *
     * @param token 待解析的JWT令牌
     * @throws LeaseException 当令牌过期（ExpiredJwtException）或无效（JwtException）时抛出
     */
    public static void parseToken(String token){

        if (token==null){
            throw new LeaseException(ResultCodeEnum.ADMIN_LOGIN_AUTH);
        }

        try {
            // 初始化Jwt解析器，并设置签名密钥
            JwtParser jwtParser = Jwts.parserBuilder().setSigningKey(secretKey).build();
            // 执行令牌解析
            jwtParser.parse(token);
        }catch (ExpiredJwtException e){
            // 当令牌过期时，抛出LeaseException，指示令牌已过期
            throw new LeaseException(ResultCodeEnum.TOKEN_EXPIRED);
        }catch (JwtException e){
            // 当令牌无效时，抛出LeaseException，指示令牌无效
            throw new LeaseException(ResultCodeEnum.TOKEN_INVALID);
        }
    }

    public static void main(String[] args) {
        System.out.println(createToken(1L,"admin"));
    }
}
