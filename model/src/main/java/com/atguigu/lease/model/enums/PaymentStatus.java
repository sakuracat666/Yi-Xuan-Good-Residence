package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 支付状态枚举
 */
public enum PaymentStatus implements BaseEnum {

    WAITING(0, "待支付"),
    SUCCESS(1, "已支付"),
    CLOSED(2, "已关闭"),
    REFUNDED(3, "已退款");

    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;

    PaymentStatus(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    @Override
    public Integer getCode() {
        return this.code;
    }

    @Override
    public String getName() {
        return this.name;
    }
}
