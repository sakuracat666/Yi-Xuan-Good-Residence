package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 报修优先级
 */
public enum RepairPriority implements BaseEnum {

    LOW(1, "低"),
    MEDIUM(2, "中"),
    HIGH(3, "高");

    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;

    RepairPriority(Integer code, String name) {
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
