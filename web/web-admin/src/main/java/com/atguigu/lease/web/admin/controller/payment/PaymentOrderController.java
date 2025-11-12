package com.atguigu.lease.web.admin.controller.payment;

import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.admin.service.PaymentOrderService;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderDetailVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderItemVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderQueryVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.Min;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * 支付订单管理接口
 */
@Tag(name = "支付订单管理")
@RestController
@RequestMapping("/admin/payment/order")
@Validated
public class PaymentOrderController {

    @Autowired
    private PaymentOrderService paymentOrderService;

    /**
     * 分页查询支付订单
     */
    @Operation(summary = "分页查询支付订单")
    @GetMapping("/page")
    public Result<IPage<PaymentOrderItemVo>> page(@RequestParam(defaultValue = "1") @Min(value = 1, message = "页码必须大于等于1") Long current,
                                                  @RequestParam(defaultValue = "10") @Min(value = 1, message = "分页大小必须大于等于1") Long size,
                                                  PaymentOrderQueryVo queryVo) {
        Page<PaymentOrderItemVo> page = new Page<>(current, size);
        IPage<PaymentOrderItemVo> result = paymentOrderService.pageOrder(page, queryVo);
        return Result.ok(result);
    }

    /**
     * 查询支付订单详情
     */
    @Operation(summary = "查询支付订单详情")
    @GetMapping("/{id}")
    public Result<PaymentOrderDetailVo> getDetail(@PathVariable Long id) {
        PaymentOrderDetailVo detailVo = paymentOrderService.getDetail(id);
        return Result.ok(detailVo);
    }

    /**
     * 管理员手动关闭订单
     */
    @Operation(summary = "关闭支付订单")
    @PostMapping("/{id}/close")
    public Result<Void> close(@PathVariable Long id) {
        Long operatorId = LoginUserHolder.getLoginUser().getUserId();
        paymentOrderService.closeOrder(id, operatorId);
        return Result.ok();
    }

    /**
     * 管理员手动标记订单支付成功
     */
    @Operation(summary = "标记订单支付成功")
    @PostMapping("/{id}/mark-paid")
    public Result<Void> markPaid(@PathVariable Long id) {
        Long operatorId = LoginUserHolder.getLoginUser().getUserId();
        paymentOrderService.markPaid(id, operatorId);
        return Result.ok();
    }
}
