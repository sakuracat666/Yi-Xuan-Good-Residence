package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.UserBalance;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;

/**
 * 用户余额 Mapper
 */
public interface UserBalanceMapper extends BaseMapper<UserBalance> {

  /**
   * 扣减用户余额（使用乐观锁）
   *
   * @param userId  用户ID
   * @param amount  扣减金额
   * @param version 当前版本号
   * @return 影响行数
   */
  int deductBalance(@Param("userId") Long userId,
      @Param("amount") BigDecimal amount,
      @Param("version") Integer version);

  /**
   * 增加用户余额（退款使用）
   *
   * @param userId  用户ID
   * @param amount  增加金额
   * @param version 当前版本号
   * @return 影响行数
   */
  int addBalance(@Param("userId") Long userId,
      @Param("amount") BigDecimal amount,
      @Param("version") Integer version);
}
