package com.atguigu.lease.web.app.service;

import com.atguigu.lease.web.app.vo.bill.*;

/**
 * 租金账单服务接口
 */
public interface RentBillService {

    /**
     * 根据租约生成所有账单
     *
     * @param leaseAgreementId 租约ID
     */
    void generateBills(Long leaseAgreementId);

    /**
     * 获取租约的账单列表
     *
     * @param leaseAgreementId 租约ID
     * @return 账单列表
     */
    BillListVo getBillList(Long leaseAgreementId);

    /**
     * 获取当前应付账单
     *
     * @param leaseAgreementId 租约ID
     * @return 当前应付账单
     */
    CurrentBillVo getCurrentPayableBill(Long leaseAgreementId);

    /**
     * 获取账单详情
     *
     * @param billId 账单ID
     * @return 账单详情
     */
    BillDetailVo getBillDetail(Long billId);

    /**
     * 标记账单已支付
     *
     * @param billId          账单ID
     * @param paymentOrderId  支付订单ID
     */
    void markBillPaid(Long billId, Long paymentOrderId);

    /**
     * 取消租约的所有未支付账单
     *
     * @param leaseAgreementId 租约ID
     */
    void cancelUnpaidBills(Long leaseAgreementId);

    /**
     * 检查并更新逾期账单
     */
    void checkAndUpdateOverdueBills();
}
