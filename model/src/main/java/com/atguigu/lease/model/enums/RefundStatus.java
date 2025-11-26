package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 退款状态枚举
 */
public enum RefundStatus implements BaseEnum {

  PROCESSING(0, "处理中"),
  SUCCESS(1, "退款成功"),
  FAILED(2, "退款失败");

  @EnumValue
  @JsonValue
  private final Integer code;

  private final String name;

  RefundStatus(Integer code, String name) {
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
