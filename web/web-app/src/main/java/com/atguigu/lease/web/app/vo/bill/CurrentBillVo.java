package com.atguigu.lease.web.app.vo.bill;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

/**
 * 当前应付账单VO
 */
@Data
@Schema(description = "当前应付账单VO")
public class CurrentBillVo {

    @Schema(description = "当前账单信息")
    private BillItemVo bill;

    @Schema(description = "是否可以支付")
    private Boolean canPay;

    @Schema(description = "提示信息")
    private String message;

    @Schema(description = "支付截止时间")
    private Date payDeadline;
}
