package com.atguigu.lease.web.admin.vo.payment;

import com.atguigu.lease.model.enums.PaymentStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

/**
 * 支付订单查询条件
 */
@Data
@Schema(description = "支付订单查询条件")
public class PaymentOrderQueryVo {

    @Schema(description = "商户订单号")
    private String orderNo;

    @Schema(description = "租客姓名")
    private String tenantName;

    @Schema(description = "租客手机号")
    private String tenantPhone;

    @Schema(description = "支付状态")
    private PaymentStatus status;

    @Schema(description = "开始时间")
    private Date beginTime;

    @Schema(description = "结束时间")
    private Date endTime;
}
