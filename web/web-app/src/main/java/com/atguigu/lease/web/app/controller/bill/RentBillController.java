package com.atguigu.lease.web.app.controller.bill;

import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.app.service.RentBillService;
import com.atguigu.lease.web.app.vo.bill.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 租金账单接口
 */
@RestController
@RequestMapping("/app/rent-bill")
@Tag(name = "租金账单管理")
public class RentBillController {

    @Autowired
    private RentBillService rentBillService;

    /**
     * 获取租约的账单列表
     *
     * @param leaseAgreementId 租约ID
     * @return 账单列表
     */
    @Operation(summary = "获取租约的账单列表")
    @GetMapping("/list/{leaseAgreementId}")
    public Result<BillListVo> getBillList(
            @Parameter(description = "租约ID") @PathVariable Long leaseAgreementId) {
        BillListVo billListVo = rentBillService.getBillList(leaseAgreementId);
        return Result.ok(billListVo);
    }

    /**
     * 获取当前应付账单
     *
     * @param leaseAgreementId 租约ID
     * @return 当前应付账单
     */
    @Operation(summary = "获取当前应付账单")
    @GetMapping("/current/{leaseAgreementId}")
    public Result<CurrentBillVo> getCurrentBill(
            @Parameter(description = "租约ID") @PathVariable Long leaseAgreementId) {
        CurrentBillVo currentBillVo = rentBillService.getCurrentPayableBill(leaseAgreementId);
        return Result.ok(currentBillVo);
    }

    /**
     * 获取账单详情
     *
     * @param billId 账单ID
     * @return 账单详情
     */
    @Operation(summary = "获取账单详情")
    @GetMapping("/{billId}")
    public Result<BillDetailVo> getBillDetail(
            @Parameter(description = "账单ID") @PathVariable Long billId) {
        BillDetailVo billDetailVo = rentBillService.getBillDetail(billId);
        return Result.ok(billDetailVo);
    }
}
