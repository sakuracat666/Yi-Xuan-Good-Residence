package com.atguigu.lease.web.app.service;

import com.atguigu.lease.model.entity.UserBalance;
import com.atguigu.lease.web.app.vo.payment.UserBalanceVo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.math.BigDecimal;

/**
 * 用户余额服务接口
 */
public interface UserBalanceService extends IService<UserBalance> {

  /**
   * 获取用户余额信息
   *
   * @param userId 用户ID
   * @return 用户余额信息
   */
  UserBalanceVo getUserBalance(Long userId);

  /**
   * 获取或创建用户余额记录
   *
   * @param userId 用户ID
   * @return 用户余额实体
   */
  UserBalance getOrCreateBalance(Long userId);

  /**
   * 扣减用户余额（用于支付）
   *
   * @param userId         用户ID
   * @param amount         扣减金额
   * @param relatedOrderNo 关联订单号
   * @param remark         备注
   * @return 交易流水号
   */
  String deductBalance(Long userId, BigDecimal amount, String relatedOrderNo, String remark);

  /**
   * 增加用户余额（用于退款）
   *
   * @param userId         用户ID
   * @param amount         增加金额
   * @param relatedOrderNo 关联订单号
   * @param remark         备注
   * @return 交易流水号
   */
  String addBalance(Long userId, BigDecimal amount, String relatedOrderNo, String remark);

  /**
   * 充值余额
   *
   * @param userId 用户ID
   * @param amount 充值金额
   * @param remark 备注
   * @return 交易流水号
   */
  String rechargeBalance(Long userId, BigDecimal amount, String remark);
}
