package com.atguigu.lease.common.utils;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.enums.SystemUserType;
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
        return createToken(userId, username, null);
    }

    /**
     * 创建包含用户类型的JWT令牌
     * 该方法在基础用户信息之外将用户类型写入令牌，方便后续权限校验
     *
     * @param userId   用户ID
     * @param username 用户名
     * @param userType 用户类型，可为空
     * @return 生成的JWT令牌
     */
    public static String createToken(Long userId, String username, SystemUserType userType) {
        JwtBuilder builder = Jwts.builder()
                .setExpiration(new Date(System.currentTimeMillis() + 36000000))
                .setSubject("LOGIN_USER")
                .claim("username", username)
                .claim("userId", userId)
                .signWith(secretKey, SignatureAlgorithm.HS256);
        if (userType != null) {
            builder.claim("userType", userType.name());
        }
        return builder.compact();
    }



    /**
     * 解析令牌
     *
     * 本函数旨在解析给定的JWT令牌，验证其有效性并提取其中的claims（载荷）部分
     * 如果令牌为null，抛出LeaseException异常，指示管理员登录认证失败
     *
     * @param token 待解析的JWT令牌，不能为空
     * @return Claims对象，包含解析出的令牌载荷
     * @throws LeaseException 可能抛出此异常，指示令牌过期或无效
     */
    public static Claims parseToken(String token){

        // 检查令牌是否为null，如果为null，则抛出管理员登录认证失败的异常
        if (token==null){
            throw new LeaseException(ResultCodeEnum.ADMIN_LOGIN_AUTH);
        }

        // 尝试解析令牌
        try {
            // 使用密钥secretKey初始化JWT解析器jwtParser
            JwtParser jwtParser = Jwts.parserBuilder().setSigningKey(secretKey).build();
            // 使用jwtParser解析令牌，并获取其中的claims
            Jws<Claims> claimsJws = jwtParser.parseClaimsJws(token);
            // 返回解析出的claims对象
            return claimsJws.getBody();
        } catch (ExpiredJwtException e) {
            // 如果捕获到ExpiredJwtException异常，表示令牌已过期，抛出相应异常
            throw new LeaseException(ResultCodeEnum.TOKEN_EXPIRED);
        } catch (JwtException e) {
            // 如果捕获到JwtException异常，表示令牌无效，抛出相应异常
            throw new LeaseException(ResultCodeEnum.TOKEN_INVALID);
        }
    }

    /**
     * 主函数入口
     * 该方法用于演示如何使用createToken方法生成令牌
     *
     * @param args 命令行参数，不是用于此示例程序的功能
     */
    public static void main(String[] args) {
        System.out.println(createToken(8L,"18190067037"));
    }
}
