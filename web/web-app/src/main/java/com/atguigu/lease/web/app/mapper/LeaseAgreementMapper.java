package com.atguigu.lease.web.app.mapper;

import com.atguigu.lease.model.entity.LeaseAgreement;
import com.atguigu.lease.web.app.vo.agreement.AgreementItemVo;
import com.atguigu.lease.web.app.vo.payment.HomePendingPaymentVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【lease_agreement(租约信息表)】的数据库操作Mapper
 * @createDate 2023-07-26 11:12:39
 * @Entity com.atguigu.lease.model.entity.LeaseAgreement
 */
public interface LeaseAgreementMapper extends BaseMapper<LeaseAgreement> {

    /**
     * 根据手机号查询个人租约信息列表
     * 
     * @param phone
     * @return
     */
    List<AgreementItemVo> listItemByPhone(String phone);

    /**
     * 根据手机号查询最新一条待支付租约（首页提示）
     *
     * @param phone 承租人手机号
     * @return 待支付租约对应的首页提示信息
     */
    HomePendingPaymentVo selectLatestPendingByPhone(String phone);
}
