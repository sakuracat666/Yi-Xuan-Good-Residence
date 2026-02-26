package com.atguigu.lease.web.app.vo.payment;

import com.atguigu.lease.model.enums.RefundStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 退款响应结果
 */
@Data
@Schema(description = "退款响应结果")
public class RefundResponse {

  @Schema(description = "退款单号")
  private String refundNo;

  @Schema(description = "原支付订单号")
  private String originalOrderNo;

  @Schema(description = "退款总金额（元）")
  private BigDecimal refundAmount;

  @Schema(description = "支付宝退款金额（元）")
  private BigDecimal alipayRefund;

  @Schema(description = "微信退款金额（元）")
  private BigDecimal wechatRefund;

  @Schema(description = "退款状态")
  private RefundStatus status;

  @Schema(description = "退款时间")
  private Date refundTime;

  @Schema(description = "提示信息")
  private String message;
}
