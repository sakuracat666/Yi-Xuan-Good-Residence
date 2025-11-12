package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

/**
 * 支付下单请求参数
 */
@Data
@Schema(description = "支付下单请求参数")
public class PaymentCreateRequest {

    @Schema(description = "租约ID", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "租约ID不能为空")
    private Long leaseAgreementId;

    @Schema(description = "支付场景，如押金、续租", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String scene;
}
