package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 支付方式枚举
 */
public enum PayMethod implements BaseEnum {

  ALIPAY(1, "支付宝支付"),
  WECHAT(2, "微信支付");

  @EnumValue
  @JsonValue
  private final Integer code;

  private final String name;

  PayMethod(Integer code, String name) {
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
