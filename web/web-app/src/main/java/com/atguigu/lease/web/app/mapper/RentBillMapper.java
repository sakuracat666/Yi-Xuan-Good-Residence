package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.RentBill;
import com.atguigu.lease.web.app.vo.bill.BillItemVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.math.BigDecimal;
import java.util.List;

/**
 * 租金账单 Mapper
 */
public interface RentBillMapper extends BaseMapper<RentBill> {

    /**
     * 根据租约ID查询账单列表
     *
     * @param leaseAgreementId 租约ID
     * @return 账单列表
     */
    List<BillItemVo> selectBillListByLeaseId(Long leaseAgreementId);

    /**
     * 统计租约已支付金额
     *
     * @param leaseAgreementId 租约ID
     * @return 已支付总金额
     */
    BigDecimal sumPaidAmountByLeaseId(Long leaseAgreementId);

    /**
     * 统计租约总租金金额
     *
     * @param leaseAgreementId 租约ID
     * @return 总租金金额
     */
    BigDecimal sumRentAmountByLeaseId(Long leaseAgreementId);

    /**
     * 统计租约押金金额
     *
     * @param leaseAgreementId 租约ID
     * @return 押金金额
     */
    BigDecimal sumDepositAmountByLeaseId(Long leaseAgreementId);
}
