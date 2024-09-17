package com.atguigu.lease.common.utils;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

import javax.crypto.SecretKey;
import java.util.Date;

public class JwtUtil {
    private static SecretKey secretKey = Keys.hmacShaKeyFor("wOhZtawUZJa4DzRQPgEIcobrDo45L2CT".getBytes());

    public static String createToken(Long userId,String username) {
        String jwt = Jwts.builder()
                .setExpiration(new Date(System.currentTimeMillis() + 36000000))
                .setSubject("LOGIN_USER")
                .claim("username", username)
                .claim("userId", userId)
                .signWith(secretKey, SignatureAlgorithm.HS256)
                .compact();
        return jwt;
    }

    public static void main(String[] args) {
        System.out.println(createToken(1L,"admin"));
    }
}
