package com.atguigu.lease.web.app.controller.payment;

import com.atguigu.lease.common.login.LoginUser;
import com.atguigu.lease.common.login.LoginUserHolder;
import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.model.entity.PaymentOrder;
import com.atguigu.lease.web.app.service.PaymentService;
import com.atguigu.lease.web.app.vo.payment.PaymentCreateRequest;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 支付功能接口
 */
@RestController
@RequestMapping("/app/payment")
@Tag(name = "支付管理")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    /**
     * 创建支付订单
     *
     * @param request 下单参数
     * @return 支付订单信息
     */
    @Operation(summary = "创建支付订单")
    @PostMapping("/order")
    public Result<PaymentOrder> createOrder(@Valid @RequestBody PaymentCreateRequest request) {
        LoginUser loginUser = LoginUserHolder.getLoginUser();
        PaymentOrder paymentOrder = paymentService.createPaymentOrder(loginUser, request);
        return Result.ok(paymentOrder);
    }

    /**
     * 查询支付订单
     *
     * @param orderNo 订单号
     * @return 支付订单
     */
    @Operation(summary = "查询支付订单")
    @GetMapping("/order/{orderNo}")
    public Result<PaymentOrder> getOrder(@PathVariable String orderNo) {
        LoginUser loginUser = LoginUserHolder.getLoginUser();
        PaymentOrder paymentOrder = paymentService.getPaymentOrder(loginUser, orderNo);
        return Result.ok(paymentOrder);
    }

    /**
     * 模拟支付成功
     *
     * @param orderNo 订单号
     * @return 操作结果
     */
    @Operation(summary = "模拟支付成功")
    @PostMapping("/order/{orderNo}/mock-success")
    public Result<Void> mockPaySuccess(@PathVariable String orderNo) {
        paymentService.mockPaySuccess(orderNo);
        return Result.ok();
    }
}
