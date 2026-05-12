package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.LeaseAgreement;
import com.atguigu.lease.model.entity.PaymentType;
import com.atguigu.lease.model.entity.RentBill;
import com.atguigu.lease.model.enums.BillStatus;
import com.atguigu.lease.web.app.mapper.LeaseAgreementMapper;
import com.atguigu.lease.web.app.mapper.PaymentTypeMapper;
import com.atguigu.lease.web.app.mapper.RentBillMapper;
import com.atguigu.lease.web.app.service.RentBillService;
import com.atguigu.lease.web.app.vo.bill.*;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * 租金账单服务实现
 */
@Service
public class RentBillServiceImpl implements RentBillService {

    @Autowired
    private RentBillMapper rentBillMapper;

    @Autowired
    private LeaseAgreementMapper leaseAgreementMapper;

    @Autowired
    private PaymentTypeMapper paymentTypeMapper;

    /**
     * 根据租约生成所有账单
     * 新逻辑：
     * 1. 如果有押金，先生成押金账单（单独支付）
     * 2. 第一期租金账单需要减去押金金额（押金抵扣）
     * 3. 后续租金账单为正常金额
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void generateBills(Long leaseAgreementId) {
        // 1. 查询租约信息
        LeaseAgreement agreement = leaseAgreementMapper.selectById(leaseAgreementId);
        if (agreement == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        // 2. 检查是否已生成过账单
        Long existCount = rentBillMapper.selectCount(new LambdaQueryWrapper<RentBill>()
                .eq(RentBill::getLeaseAgreementId, leaseAgreementId));
        if (existCount != null && existCount > 0) {
            return;
        }

        // 3. 获取支付方式
        PaymentType paymentType = agreement.getPaymentTypeId() != null
                ? paymentTypeMapper.selectById(agreement.getPaymentTypeId())
                : null;
        int payMonths = parsePayMonths(paymentType != null ? paymentType.getPayMonthCount() : null);

        // 4. 计算总租期月数
        int totalMonths = calculateTotalMonths(agreement.getLeaseStartDate(), agreement.getLeaseEndDate());

        // 5. 计算租金期数
        int rentPeriods = (int) Math.ceil((double) totalMonths / payMonths);

        // 6. 获取月租金和押金
        BigDecimal rentPerMonth = agreement.getRent() != null ? agreement.getRent() : BigDecimal.ZERO;
        BigDecimal deposit = agreement.getDeposit() != null ? agreement.getDeposit() : BigDecimal.ZERO;
        boolean hasDeposit = deposit.compareTo(BigDecimal.ZERO) > 0;

        // 7. 计算总期数（如果有押金，总期数 = 押金账单 + 租金账单）
        int totalPeriods = hasDeposit ? rentPeriods + 1 : rentPeriods;

        List<RentBill> bills = new ArrayList<>();
        int periodIndex = 1;

        // 8. 如果有押金，先生成押金账单
        if (hasDeposit) {
            RentBill depositBill = new RentBill();
            depositBill.setLeaseAgreementId(leaseAgreementId);
            depositBill.setPeriodIndex(periodIndex++);
            depositBill.setTotalPeriods(totalPeriods);
            depositBill.setBillType(1); // 押金账单
            depositBill.setPeriodStartDate(agreement.getLeaseStartDate());
            depositBill.setPeriodEndDate(agreement.getLeaseStartDate());
            depositBill.setRentMonths(0);
            depositBill.setRentAmount(BigDecimal.ZERO);
            depositBill.setDepositAmount(deposit);
            depositBill.setTotalAmount(deposit);
            depositBill.setDueDate(agreement.getLeaseStartDate());
            depositBill.setStatus(BillStatus.WAITING);
            bills.add(depositBill);
        }

        // 9. 生成租金账单
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(agreement.getLeaseStartDate());
        int remainingMonths = totalMonths;

        for (int i = 1; i <= rentPeriods; i++) {
            RentBill bill = new RentBill();
            bill.setLeaseAgreementId(leaseAgreementId);
            bill.setPeriodIndex(periodIndex++);
            bill.setTotalPeriods(totalPeriods);
            bill.setBillType(2); // 租金账单

            // 计算本期租金周期开始日期
            Date periodStart = calendar.getTime();
            bill.setPeriodStartDate(periodStart);

            // 计算本期租金月数（最后一期可能不足一个周期）
            int currentRentMonths = Math.min(payMonths, remainingMonths);
            bill.setRentMonths(currentRentMonths);

            // 计算本期租金周期结束日期
            calendar.add(Calendar.MONTH, currentRentMonths);
            calendar.add(Calendar.DAY_OF_MONTH, -1);
            Date periodEnd = calendar.getTime();

            // 不能超过租约结束日期
            if (periodEnd.after(agreement.getLeaseEndDate())) {
                periodEnd = agreement.getLeaseEndDate();
            }
            bill.setPeriodEndDate(periodEnd);

            // 应付日期 = 本期租金周期开始日期
            bill.setDueDate(periodStart);

            // 计算租金金额
            BigDecimal rentAmount = rentPerMonth.multiply(BigDecimal.valueOf(currentRentMonths));

            // 第一期租金需要减去押金（押金抵扣）
            if (i == 1 && hasDeposit) {
                rentAmount = rentAmount.subtract(deposit);
                // 如果抵扣后金额为负数或零，说明押金足够支付第一期租金
                if (rentAmount.compareTo(BigDecimal.ZERO) <= 0) {
                    rentAmount = BigDecimal.ZERO;
                }
            }

            bill.setRentAmount(rentAmount);
            bill.setDepositAmount(BigDecimal.ZERO);
            bill.setTotalAmount(rentAmount);
            bill.setStatus(BillStatus.WAITING);

            bills.add(bill);

            // 准备下一期
            calendar.add(Calendar.DAY_OF_MONTH, 1);
            remainingMonths -= currentRentMonths;
        }

        // 10. 批量插入
        for (RentBill bill : bills) {
            rentBillMapper.insert(bill);
        }
    }

    /**
     * 获取租约的账单列表
     */
    @Override
    public BillListVo getBillList(Long leaseAgreementId) {
        BillListVo vo = new BillListVo();
        vo.setLeaseAgreementId(leaseAgreementId);

        // 查询账单列表
        List<BillItemVo> bills = rentBillMapper.selectBillListByLeaseId(leaseAgreementId);
        vo.setBills(bills);

        if (bills != null && !bills.isEmpty()) {
            // 获取总期数
            vo.setTotalPeriods(bills.get(0).getTotalPeriods());

            // 计算当前期数（最早的待支付期）
            int currentPeriod = bills.stream()
                    .filter(b -> b.getStatus() == BillStatus.WAITING.getCode() || b.getStatus() == BillStatus.OVERDUE.getCode())
                    .mapToInt(BillItemVo::getPeriodIndex)
                    .min()
                    .orElse(bills.size() + 1);
            vo.setCurrentPeriod(currentPeriod);

            // 统计金额
            vo.setTotalRentAmount(rentBillMapper.sumRentAmountByLeaseId(leaseAgreementId));
            vo.setTotalDepositAmount(rentBillMapper.sumDepositAmountByLeaseId(leaseAgreementId));
            vo.setTotalPaidAmount(rentBillMapper.sumPaidAmountByLeaseId(leaseAgreementId));
        }

        return vo;
    }

    /**
     * 获取当前应付账单
     */
    @Override
    public CurrentBillVo getCurrentPayableBill(Long leaseAgreementId) {
        CurrentBillVo vo = new CurrentBillVo();

        // 查询最早的待支付账单
        RentBill bill = rentBillMapper.selectOne(new LambdaQueryWrapper<RentBill>()
                .eq(RentBill::getLeaseAgreementId, leaseAgreementId)
                .in(RentBill::getStatus, BillStatus.WAITING.getCode(), BillStatus.OVERDUE.getCode())
                .orderByAsc(RentBill::getPeriodIndex)
                .last("LIMIT 1"));

        if (bill == null) {
            vo.setCanPay(false);
            vo.setMessage("暂无待支付账单");
            return vo;
        }

        // 转换为VO
        BillItemVo billItemVo = convertToBillItemVo(bill);
        vo.setBill(billItemVo);
        vo.setPayDeadline(bill.getDueDate());

        // 判断是否可以支付
        if (bill.getStatus() == BillStatus.OVERDUE) {
            vo.setCanPay(false);
            vo.setMessage("账单已逾期，请联系客服处理");
        } else {
            vo.setCanPay(true);
            vo.setMessage("请于" + bill.getDueDate() + "前完成支付");
        }

        return vo;
    }

    /**
     * 获取账单详情
     */
    @Override
    public BillDetailVo getBillDetail(Long billId) {
        RentBill bill = rentBillMapper.selectById(billId);
        if (bill == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        BillDetailVo vo = new BillDetailVo();
        vo.setId(bill.getId());
        vo.setLeaseAgreementId(bill.getLeaseAgreementId());
        vo.setPeriodIndex(bill.getPeriodIndex());
        vo.setTotalPeriods(bill.getTotalPeriods());
        vo.setPeriodStartDate(bill.getPeriodStartDate());
        vo.setPeriodEndDate(bill.getPeriodEndDate());
        vo.setRentMonths(bill.getRentMonths());
        vo.setRentAmount(bill.getRentAmount());
        vo.setDepositAmount(bill.getDepositAmount());
        vo.setTotalAmount(bill.getTotalAmount());
        vo.setDueDate(bill.getDueDate());
        vo.setStatus(bill.getStatus().getCode());
        vo.setPaidTime(bill.getPaidTime());
        vo.setPaymentOrderId(bill.getPaymentOrderId());

        // 查询租约信息获取公寓名称、房间号、租客姓名
        LeaseAgreement agreement = leaseAgreementMapper.selectById(bill.getLeaseAgreementId());
        if (agreement != null) {
            vo.setTenantName(agreement.getName());
        }

        return vo;
    }

    /**
     * 标记账单已支付
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void markBillPaid(Long billId, Long paymentOrderId) {
        RentBill bill = rentBillMapper.selectById(billId);
        if (bill == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        bill.setStatus(BillStatus.PAID);
        bill.setPaymentOrderId(paymentOrderId);
        bill.setPaidTime(new Date());
        rentBillMapper.updateById(bill);

        // 更新租约支付状态
        updateAgreementPaymentStatus(bill.getLeaseAgreementId());
    }

    /**
     * 取消租约的所有未支付账单
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void cancelUnpaidBills(Long leaseAgreementId) {
        LambdaUpdateWrapper<RentBill> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(RentBill::getLeaseAgreementId, leaseAgreementId)
                .in(RentBill::getStatus, BillStatus.WAITING.getCode(), BillStatus.OVERDUE.getCode())
                .set(RentBill::getStatus, BillStatus.CANCELED);
        rentBillMapper.update(null, updateWrapper);
    }

    /**
     * 检查并更新逾期账单
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void checkAndUpdateOverdueBills() {
        Date today = new Date();

        // 查询所有已过期但状态仍为待支付的账单
        List<RentBill> overdueBills = rentBillMapper.selectList(new LambdaQueryWrapper<RentBill>()
                .eq(RentBill::getStatus, BillStatus.WAITING)
                .lt(RentBill::getDueDate, today));

        for (RentBill bill : overdueBills) {
            bill.setStatus(BillStatus.OVERDUE);
            rentBillMapper.updateById(bill);
        }
    }

    /**
     * 解析支付周期月数
     */
    private int parsePayMonths(String payMonthCount) {
        if (payMonthCount == null || payMonthCount.isBlank()) {
            return 1;
        }
        try {
            int parsed = Integer.parseInt(payMonthCount.trim());
            return parsed <= 0 ? 1 : parsed;
        } catch (NumberFormatException e) {
            return 1;
        }
    }

    /**
     * 计算总租期月数
     * 注意：租期计算逻辑是计算从开始日期到结束日期之间包含的月份
     * 例如：2026-03-11 到 2026-04-12，是2个月（3月、4月）
     * 例如：2026-03-11 到 2026-03-31，是1个月（3月）
     * 例如：2026-03-11 到 2026-05-10，是2个月（3月、4月），因为5月不满一个月
     */
    private int calculateTotalMonths(Date startDate, Date endDate) {
        if (startDate == null || endDate == null) {
            return 0;
        }

        Calendar start = Calendar.getInstance();
        start.setTime(startDate);
        Calendar end = Calendar.getInstance();
        end.setTime(endDate);

        // 计算年份差和月份差
        int years = end.get(Calendar.YEAR) - start.get(Calendar.YEAR);
        int months = end.get(Calendar.MONTH) - start.get(Calendar.MONTH);

        // 计算总月数
        int totalMonths = years * 12 + months;

        // 如果结束日期的日 < 开始日期的日，说明不满一个月
        if (end.get(Calendar.DAY_OF_MONTH) < start.get(Calendar.DAY_OF_MONTH)) {
            totalMonths--;
        }

        // 至少1个月
        return Math.max(1, totalMonths);
    }

    /**
     * 转换为账单项VO
     */
    private BillItemVo convertToBillItemVo(RentBill bill) {
        BillItemVo vo = new BillItemVo();
        vo.setId(bill.getId());
        vo.setPeriodIndex(bill.getPeriodIndex());
        vo.setTotalPeriods(bill.getTotalPeriods());
        vo.setPeriodStartDate(bill.getPeriodStartDate());
        vo.setPeriodEndDate(bill.getPeriodEndDate());
        vo.setRentMonths(bill.getRentMonths());
        vo.setRentAmount(bill.getRentAmount());
        vo.setDepositAmount(bill.getDepositAmount());
        vo.setTotalAmount(bill.getTotalAmount());
        vo.setDueDate(bill.getDueDate());
        vo.setStatus(bill.getStatus().getCode());
        vo.setPaidTime(bill.getPaidTime());
        return vo;
    }

    /**
     * 更新租约支付状态
     */
    private void updateAgreementPaymentStatus(Long leaseAgreementId) {
        // 检查是否所有账单都已支付
        Long unpaidCount = rentBillMapper.selectCount(new LambdaQueryWrapper<RentBill>()
                .eq(RentBill::getLeaseAgreementId, leaseAgreementId)
                .in(RentBill::getStatus, BillStatus.WAITING.getCode(), BillStatus.OVERDUE.getCode()));

        LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(LeaseAgreement::getId, leaseAgreementId);

        if (unpaidCount == null || unpaidCount == 0) {
            // 所有账单已支付
            updateWrapper.set(LeaseAgreement::getPaymentStatus,
                    com.atguigu.lease.model.enums.PaymentStatus.SUCCESS);
        } else {
            updateWrapper.set(LeaseAgreement::getPaymentStatus,
                    com.atguigu.lease.model.enums.PaymentStatus.WAITING);
        }

        leaseAgreementMapper.update(null, updateWrapper);
    }
}
