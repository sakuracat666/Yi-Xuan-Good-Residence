package com.atguigu.lease.web.app.vo.payment;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

/**
 * 退款请求参数
 */
@Data
@Schema(description = "退款请求参数")
public class RefundRequest {

  @Schema(description = "租约ID", requiredMode = Schema.RequiredMode.REQUIRED)
  @NotNull(message = "租约ID不能为空")
  private Long leaseAgreementId;

  @Schema(description = "退款原因", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  private String reason;
}
