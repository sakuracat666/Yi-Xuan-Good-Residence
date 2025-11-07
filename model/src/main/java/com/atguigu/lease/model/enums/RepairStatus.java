package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 报修状态
 */
public enum RepairStatus implements BaseEnum {

    PENDING(1, "待处理"),
    IN_PROGRESS(2, "处理中"),
    COMPLETED(3, "已完成"),
    CANCELED(4, "已取消");

    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;

    RepairStatus(Integer code, String name) {
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
