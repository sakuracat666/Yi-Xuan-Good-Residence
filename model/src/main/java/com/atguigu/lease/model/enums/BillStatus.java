package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 账单状态枚举
 */
public enum BillStatus implements BaseEnum {

    WAITING(0, "待支付"),
    PAID(1, "已支付"),
    OVERDUE(2, "已逾期"),
    CANCELED(3, "已取消");

    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;

    BillStatus(Integer code, String name) {
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
