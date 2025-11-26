package com.atguigu.lease.model.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 余额交易类型枚举
 */
public enum BalanceTransactionType implements BaseEnum {

  RECHARGE(1, "充值"),
  CONSUME(2, "消费"),
  REFUND(3, "退款"),
  FREEZE(4, "冻结"),
  UNFREEZE(5, "解冻");

  @EnumValue
  @JsonValue
  private final Integer code;

  private final String name;

  BalanceTransactionType(Integer code, String name) {
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
