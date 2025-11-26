# 统一支付接口文档

## 概述

本文档描述了租房系统的统一支付功能接口，支持以下支付方式：
- **余额支付**：使用用户账户余额进行支付
- **微信支付**：使用微信进行支付
- **混合支付**：同时使用余额和微信进行支付

同时支持根据原支付方式进行**原路退款**。

## 基础信息

- **Base URL**: `/app/payment/unified`
- **认证方式**: JWT Token（Header: `Authorization: Bearer {token}`）
- **Content-Type**: `application/json`

---

## 接口列表

### 1. 获取支付预览信息

获取订单的支付预览信息，包括订单金额、用户余额、建议支付方式等。

**请求**
```
GET /app/payment/unified/preview/{leaseAgreementId}
```

**路径参数**
| 参数名 | 类型 | 必填 | 描述 |
|--------|------|------|------|
| leaseAgreementId | Long | 是 | 租约ID |

**响应示例**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": {
    "leaseAgreementId": 1,
    "totalAmount": 3500.00,
    "userBalance": 1000.00,
    "canUseBalance": true,
    "suggestBalanceAmount": 1000.00,
    "suggestWechatAmount": 2500.00,
    "canFullBalancePay": false
  }
}
```

**响应字段说明**
| 字段名 | 类型 | 描述 |
|--------|------|------|
| leaseAgreementId | Long | 租约ID |
| totalAmount | BigDecimal | 订单总金额（元） |
| userBalance | BigDecimal | 用户当前可用余额（元） |
| canUseBalance | Boolean | 是否可以使用余额支付 |
| suggestBalanceAmount | BigDecimal | 建议余额支付金额（元） |
| suggestWechatAmount | BigDecimal | 建议微信支付金额（元） |
| canFullBalancePay | Boolean | 是否可以纯余额支付 |

---

### 2. 统一支付

发起支付请求，支持纯余额、纯微信、混合支付三种方式。

**请求**
```
POST /app/payment/unified/pay
```

**请求体**
```json
{
  "leaseAgreementId": 1,
  "scene": "押金支付",
  "useBalance": true,
  "balanceAmount": 1000.00,
  "useWechat": true,
  "wechatAmount": 2500.00
}
```

**请求参数说明**
| 参数名 | 类型 | 必填 | 描述 |
|--------|------|------|------|
| leaseAgreementId | Long | 是 | 租约ID |
| scene | String | 否 | 支付场景描述，如：押金、续租 |
| useBalance | Boolean | 是 | 是否使用余额支付 |
| balanceAmount | BigDecimal | 条件必填 | 余额支付金额（useBalance为true时必填） |
| useWechat | Boolean | 是 | 是否使用微信支付 |
| wechatAmount | BigDecimal | 条件必填 | 微信支付金额（useWechat为true时必填） |

**业务规则**
1. `useBalance` 和 `useWechat` 至少有一个为 `true`
2. `balanceAmount + wechatAmount` 必须等于订单总金额
3. `balanceAmount` 不能超过用户当前余额

**响应示例**

**场景1：纯余额支付成功**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": {
    "paymentOrderId": 100,
    "orderNo": "PAY20241126100000123456",
    "amountTotal": 1000.00,
    "balanceAmount": 1000.00,
    "wechatAmount": 0.00,
    "payMethod": 1,
    "status": 1,
    "balancePaid": true,
    "needWechatPay": false,
    "wechatH5Url": null,
    "wechatCodeUrl": null,
    "message": "余额支付成功"
  }
}
```

**场景2：混合支付（需继续微信支付）**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": {
    "paymentOrderId": 101,
    "orderNo": "PAY20241126100000123457",
    "amountTotal": 3500.00,
    "balanceAmount": 1000.00,
    "wechatAmount": 2500.00,
    "payMethod": 3,
    "status": 0,
    "balancePaid": true,
    "needWechatPay": true,
    "wechatH5Url": "/mock/wechat/pay?orderNo=PAY20241126100000123457",
    "wechatCodeUrl": "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=...",
    "message": "余额已扣款成功，请继续完成微信支付"
  }
}
```

**响应字段说明**
| 字段名 | 类型 | 描述 |
|--------|------|------|
| paymentOrderId | Long | 支付订单ID |
| orderNo | String | 商户订单号 |
| amountTotal | BigDecimal | 支付总金额（元） |
| balanceAmount | BigDecimal | 余额支付金额（元） |
| wechatAmount | BigDecimal | 微信支付金额（元） |
| payMethod | Integer | 支付方式组合：0未选择 1纯余额 2纯微信 3混合支付 |
| status | Integer | 支付状态：0待支付 1已支付 2已关闭 3已退款 |
| balancePaid | Boolean | 余额是否已扣款成功 |
| needWechatPay | Boolean | 是否需要微信支付 |
| wechatH5Url | String | 微信H5支付跳转链接 |
| wechatCodeUrl | String | 微信支付二维码链接 |
| message | String | 提示信息 |

---

### 3. 微信支付回调（模拟）

模拟微信支付成功回调，用于测试。实际项目中由微信服务器回调。

**请求**
```
POST /app/payment/unified/wechat/callback/{orderNo}
```

**路径参数**
| 参数名 | 类型 | 必填 | 描述 |
|--------|------|------|------|
| orderNo | String | 是 | 商户订单号 |

**响应示例**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": null
}
```

---

### 4. 申请退款

根据支付记录原路返回退款。余额支付部分退回余额，微信支付部分退回微信。

**请求**
```
POST /app/payment/unified/refund
```

**请求体**
```json
{
  "leaseAgreementId": 1,
  "reason": "用户取消订单"
}
```

**请求参数说明**
| 参数名 | 类型 | 必填 | 描述 |
|--------|------|------|------|
| leaseAgreementId | Long | 是 | 租约ID |
| reason | String | 否 | 退款原因 |

**业务规则**
1. 只有已支付的订单才能申请退款
2. 已退款的订单不能重复退款
3. 退款按原支付方式原路返回

**响应示例**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": {
    "refundNo": "REF20241126100000123456",
    "originalOrderNo": "PAY20241126100000123457",
    "refundAmount": 3500.00,
    "balanceRefund": 1000.00,
    "wechatRefund": 2500.00,
    "status": 1,
    "refundTime": "2024-11-26 10:30:00",
    "message": "退款成功，余额退款1000.00元，微信退款2500.00元"
  }
}
```

**响应字段说明**
| 字段名 | 类型 | 描述 |
|--------|------|------|
| refundNo | String | 退款单号 |
| originalOrderNo | String | 原支付订单号 |
| refundAmount | BigDecimal | 退款总金额（元） |
| balanceRefund | BigDecimal | 余额退款金额（元） |
| wechatRefund | BigDecimal | 微信退款金额（元） |
| status | Integer | 退款状态：0处理中 1成功 2失败 |
| refundTime | Date | 退款时间 |
| message | String | 提示信息 |

---

### 5. 查询退款状态

根据退款单号查询退款状态。

**请求**
```
GET /app/payment/unified/refund/{refundNo}
```

**路径参数**
| 参数名 | 类型 | 必填 | 描述 |
|--------|------|------|------|
| refundNo | String | 是 | 退款单号 |

**响应示例**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": {
    "refundNo": "REF20241126100000123456",
    "originalOrderNo": "PAY20241126100000123457",
    "refundAmount": 3500.00,
    "balanceRefund": 1000.00,
    "wechatRefund": 2500.00,
    "status": 1,
    "refundTime": "2024-11-26 10:30:00"
  }
}
```

---

### 6. 获取用户余额信息

获取当前登录用户的余额信息。

**请求**
```
GET /app/payment/unified/balance
```

**响应示例**
```json
{
  "code": 200,
  "message": "操作成功",
  "data": {
    "userId": 1,
    "balance": 1000.00,
    "frozenAmount": 0.00,
    "totalRecharge": 5000.00,
    "totalConsume": 4000.00,
    "totalRefund": 0.00
  }
}
```

**响应字段说明**
| 字段名 | 类型 | 描述 |
|--------|------|------|
| userId | Long | 用户ID |
| balance | BigDecimal | 当前可用余额（元） |
| frozenAmount | BigDecimal | 冻结金额（元） |
| totalRecharge | BigDecimal | 累计充值金额（元） |
| totalConsume | BigDecimal | 累计消费金额（元） |
| totalRefund | BigDecimal | 累计退款金额（元） |

---

## 支付流程说明

### 纯余额支付流程
```
1. 用户选择纯余额支付
2. 调用统一支付接口，useBalance=true, useWechat=false
3. 系统扣减用户余额
4. 支付完成，订单状态变为已支付
```

### 纯微信支付流程
```
1. 用户选择纯微信支付
2. 调用统一支付接口，useBalance=false, useWechat=true
3. 系统返回微信支付链接/二维码
4. 用户完成微信支付
5. 微信回调通知系统
6. 支付完成，订单状态变为已支付
```

### 混合支付流程
```
1. 用户选择混合支付（余额+微信）
2. 调用统一支付接口，useBalance=true, useWechat=true
3. 系统先扣减用户余额
4. 系统返回微信支付链接/二维码（剩余金额）
5. 用户完成微信支付
6. 微信回调通知系统
7. 支付完成，订单状态变为已支付
```

### 退款流程
```
1. 用户申请退款
2. 系统查询原支付记录
3. 余额支付部分：直接返还到用户余额
4. 微信支付部分：调用微信退款接口
5. 退款完成，更新订单状态为已退款
```

---

## 错误码说明

| 错误码 | 描述 |
|--------|------|
| 200 | 操作成功 |
| 400 | 参数错误 |
| 401 | 未授权 |
| 403 | 无权访问 |
| 500 | 服务器内部错误 |

---

## 数据库表结构

### user_balance（用户余额表）
| 字段名 | 类型 | 描述 |
|--------|------|------|
| id | BIGINT | 主键ID |
| user_id | BIGINT | 用户ID |
| balance | DECIMAL(16,2) | 当前余额 |
| frozen_amount | DECIMAL(16,2) | 冻结金额 |
| total_recharge | DECIMAL(16,2) | 累计充值 |
| total_consume | DECIMAL(16,2) | 累计消费 |
| total_refund | DECIMAL(16,2) | 累计退款 |
| version | INT | 乐观锁版本号 |

### balance_transaction（余额变动记录表）
| 字段名 | 类型 | 描述 |
|--------|------|------|
| id | BIGINT | 主键ID |
| user_id | BIGINT | 用户ID |
| transaction_no | VARCHAR(64) | 交易流水号 |
| type | TINYINT | 交易类型：1充值 2消费 3退款 |
| amount | DECIMAL(16,2) | 交易金额 |
| balance_before | DECIMAL(16,2) | 交易前余额 |
| balance_after | DECIMAL(16,2) | 交易后余额 |
| related_order_no | VARCHAR(64) | 关联订单号 |

### payment_detail（支付明细表）
| 字段名 | 类型 | 描述 |
|--------|------|------|
| id | BIGINT | 主键ID |
| payment_order_id | BIGINT | 支付订单ID |
| pay_method | TINYINT | 支付方式：1余额 2微信 |
| amount | DECIMAL(16,2) | 支付金额 |
| status | TINYINT | 支付状态 |
| transaction_no | VARCHAR(64) | 交易流水号 |
| refund_amount | DECIMAL(16,2) | 已退款金额 |

### refund_record（退款记录表）
| 字段名 | 类型 | 描述 |
|--------|------|------|
| id | BIGINT | 主键ID |
| refund_no | VARCHAR(64) | 退款单号 |
| payment_order_id | BIGINT | 原支付订单ID |
| refund_amount | DECIMAL(16,2) | 退款总金额 |
| balance_refund | DECIMAL(16,2) | 余额退款金额 |
| wechat_refund | DECIMAL(16,2) | 微信退款金额 |
| status | TINYINT | 退款状态 |
