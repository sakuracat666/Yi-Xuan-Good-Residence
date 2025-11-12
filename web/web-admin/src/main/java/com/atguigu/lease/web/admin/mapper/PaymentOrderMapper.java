package com.atguigu.lease.web.admin.mapper;

import com.atguigu.lease.model.entity.PaymentOrder;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderDetailVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderItemVo;
import com.atguigu.lease.web.admin.vo.payment.PaymentOrderQueryVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

/**
 * 支付订单管理 Mapper
 */
public interface PaymentOrderMapper extends BaseMapper<PaymentOrder> {

    /**
     * 分页查询支付订单
     *
     * @param page    分页参数
     * @param queryVo 查询条件
     * @return 支付订单分页
     */
    IPage<PaymentOrderItemVo> pageOrder(Page<PaymentOrderItemVo> page, @Param("queryVo") PaymentOrderQueryVo queryVo);

    /**
     * 查询支付订单详情
     *
     * @param id 订单主键
     * @return 订单详情
     */
    PaymentOrderDetailVo selectDetailById(@Param("id") Long id);
}
