package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 支付方式组合枚举
 */
public enum PayMethodCombination implements BaseEnum {

  NOT_SELECTED(0, "未选择"),
  BALANCE_ONLY(1, "纯余额支付"),
  WECHAT_ONLY(2, "纯微信支付"),
  MIXED(3, "混合支付");

  @EnumValue
  @JsonValue
  private final Integer code;

  private final String name;

  PayMethodCombination(Integer code, String name) {
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
