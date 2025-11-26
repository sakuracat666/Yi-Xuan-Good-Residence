package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.BalanceTransaction;
import com.atguigu.lease.model.entity.UserBalance;
import com.atguigu.lease.model.enums.BalanceTransactionType;
import com.atguigu.lease.web.app.mapper.BalanceTransactionMapper;
import com.atguigu.lease.web.app.mapper.UserBalanceMapper;
import com.atguigu.lease.web.app.service.UserBalanceService;
import com.atguigu.lease.web.app.vo.payment.UserBalanceVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

/**
 * 用户余额服务实现
 */
@Service
public class UserBalanceServiceImpl extends ServiceImpl<UserBalanceMapper, UserBalance> implements UserBalanceService {

  private static final DateTimeFormatter TRANSACTION_NO_FORMATTER = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
  private static final int MAX_RETRY_TIMES = 3;

  @Autowired
  private UserBalanceMapper userBalanceMapper;

  @Autowired
  private BalanceTransactionMapper balanceTransactionMapper;

  /**
   * 生成交易流水号
   */
  private String generateTransactionNo(String prefix) {
    String timePart = LocalDateTime.now().format(TRANSACTION_NO_FORMATTER);
    int randomPart = new Random().nextInt(900000) + 100000;
    return prefix + timePart + randomPart;
  }

  /**
   * 获取用户余额信息
   *
   * @param userId 用户ID
   * @return 用户余额信息VO
   */
  @Override
  public UserBalanceVo getUserBalance(Long userId) {
    UserBalance userBalance = getOrCreateBalance(userId);
    UserBalanceVo vo = new UserBalanceVo();
    BeanUtils.copyProperties(userBalance, vo);
    return vo;
  }

  /**
   * 获取或创建用户余额记录
   *
   * @param userId 用户ID
   * @return 用户余额实体
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public UserBalance getOrCreateBalance(Long userId) {
    UserBalance userBalance = userBalanceMapper.selectOne(
        new LambdaQueryWrapper<UserBalance>()
            .eq(UserBalance::getUserId, userId));
    if (userBalance == null) {
      // 创建新的余额记录
      userBalance = new UserBalance();
      userBalance.setUserId(userId);
      userBalance.setBalance(BigDecimal.ZERO);
      userBalance.setFrozenAmount(BigDecimal.ZERO);
      userBalance.setTotalRecharge(BigDecimal.ZERO);
      userBalance.setTotalConsume(BigDecimal.ZERO);
      userBalance.setTotalRefund(BigDecimal.ZERO);
      userBalance.setVersion(0);
      userBalanceMapper.insert(userBalance);
    }
    return userBalance;
  }

  /**
   * 扣减用户余额（用于支付）
   *
   * @param userId         用户ID
   * @param amount         扣减金额
   * @param relatedOrderNo 关联订单号
   * @param remark         备注
   * @return 交易流水号
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public String deductBalance(Long userId, BigDecimal amount, String relatedOrderNo, String remark) {
    if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 使用乐观锁重试机制
    for (int i = 0; i < MAX_RETRY_TIMES; i++) {
      UserBalance userBalance = getOrCreateBalance(userId);

      // 检查余额是否充足
      if (userBalance.getBalance().compareTo(amount) < 0) {
        throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
      }

      BigDecimal balanceBefore = userBalance.getBalance();
      BigDecimal balanceAfter = balanceBefore.subtract(amount);

      // 使用乐观锁更新余额
      int rows = userBalanceMapper.deductBalance(userId, amount, userBalance.getVersion());
      if (rows > 0) {
        // 记录交易流水
        String transactionNo = generateTransactionNo("BAL");
        BalanceTransaction transaction = new BalanceTransaction();
        transaction.setUserId(userId);
        transaction.setTransactionNo(transactionNo);
        transaction.setType(BalanceTransactionType.CONSUME);
        transaction.setAmount(amount);
        transaction.setBalanceBefore(balanceBefore);
        transaction.setBalanceAfter(balanceAfter);
        transaction.setRelatedOrderNo(relatedOrderNo);
        transaction.setRemark(remark);
        balanceTransactionMapper.insert(transaction);

        return transactionNo;
      }
      // 乐观锁冲突，重试
    }

    throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_EXIST_ERROR);
  }

  /**
   * 增加用户余额（用于退款）
   *
   * @param userId         用户ID
   * @param amount         增加金额
   * @param relatedOrderNo 关联订单号
   * @param remark         备注
   * @return 交易流水号
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public String addBalance(Long userId, BigDecimal amount, String relatedOrderNo, String remark) {
    if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    // 使用乐观锁重试机制
    for (int i = 0; i < MAX_RETRY_TIMES; i++) {
      UserBalance userBalance = getOrCreateBalance(userId);
      BigDecimal balanceBefore = userBalance.getBalance();
      BigDecimal balanceAfter = balanceBefore.add(amount);

      // 使用乐观锁更新余额
      int rows = userBalanceMapper.addBalance(userId, amount, userBalance.getVersion());
      if (rows > 0) {
        // 记录交易流水
        String transactionNo = generateTransactionNo("REF");
        BalanceTransaction transaction = new BalanceTransaction();
        transaction.setUserId(userId);
        transaction.setTransactionNo(transactionNo);
        transaction.setType(BalanceTransactionType.REFUND);
        transaction.setAmount(amount);
        transaction.setBalanceBefore(balanceBefore);
        transaction.setBalanceAfter(balanceAfter);
        transaction.setRelatedOrderNo(relatedOrderNo);
        transaction.setRemark(remark);
        balanceTransactionMapper.insert(transaction);

        return transactionNo;
      }
      // 乐观锁冲突，重试
    }

    throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_EXIST_ERROR);
  }

  /**
   * 充值余额
   *
   * @param userId 用户ID
   * @param amount 充值金额
   * @param remark 备注
   * @return 交易流水号
   */
  @Override
  @Transactional(rollbackFor = Exception.class)
  public String rechargeBalance(Long userId, BigDecimal amount, String remark) {
    if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
      throw new LeaseException(ResultCodeEnum.PARAM_ERROR);
    }

    UserBalance userBalance = getOrCreateBalance(userId);
    BigDecimal balanceBefore = userBalance.getBalance();
    BigDecimal balanceAfter = balanceBefore.add(amount);

    // 更新余额
    userBalance.setBalance(balanceAfter);
    userBalance.setTotalRecharge(userBalance.getTotalRecharge().add(amount));
    userBalanceMapper.updateById(userBalance);

    // 记录交易流水
    String transactionNo = generateTransactionNo("RCH");
    BalanceTransaction transaction = new BalanceTransaction();
    transaction.setUserId(userId);
    transaction.setTransactionNo(transactionNo);
    transaction.setType(BalanceTransactionType.RECHARGE);
    transaction.setAmount(amount);
    transaction.setBalanceBefore(balanceBefore);
    transaction.setBalanceAfter(balanceAfter);
    transaction.setRemark(remark);
    balanceTransactionMapper.insert(transaction);

    return transactionNo;
  }
}
