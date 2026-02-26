package com.atguigu.lease.web.admin.service.impl;

import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.model.enums.PaymentStatus;
import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.web.admin.mapper.*;
import com.atguigu.lease.web.admin.service.LeaseAgreementService;
import com.atguigu.lease.web.admin.vo.agreement.AgreementQueryVo;
import com.atguigu.lease.web.admin.vo.agreement.AgreementVo;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.rmi.dgc.Lease;

/**
 * @author liubo
 * @description 针对表【lease_agreement(租约信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class LeaseAgreementServiceImpl extends ServiceImpl<LeaseAgreementMapper, LeaseAgreement>
        implements LeaseAgreementService {

    @Autowired
    private LeaseAgreementMapper leaseAgreementMapper;
    @Autowired
    private ApartmentInfoMapper apartmentInfoMapper;
    @Autowired
    private RoomInfoMapper roomInfoMapper;
    @Autowired
    private PaymentTypeMapper paymentTypeMapper;
    @Autowired
    private LeaseTermMapper leaseTermMapper;

    @Override
    public IPage<AgreementVo> pageviewAgreement(IPage<AgreementVo> page, AgreementQueryVo queryVo) {
        return leaseAgreementMapper.pageviewAgreement(page, queryVo);
    }

    @Override
    public AgreementVo getAgreementById(Long id) {
        // 根据id查询租约信息
        LeaseAgreement leaseAgreement = leaseAgreementMapper.selectById(id);

        // 根据租约信息中的公寓id查询公寓信息
        ApartmentInfo apartmentInfo = apartmentInfoMapper.selectById(leaseAgreement.getApartmentId());

        // 根据租约信息中的房间id查询房间信息
        RoomInfo roomInfo = roomInfoMapper.selectById(leaseAgreement.getRoomId());

        // 根据租约信息中的支付方式id查询支付方式信息
        PaymentType paymentType = paymentTypeMapper.selectById(leaseAgreement.getPaymentTypeId());

        // 根据租约信息中的租期id查询租期信息
        LeaseTerm leaseTerm = leaseTermMapper.selectById(leaseAgreement.getLeaseTermId());

        AgreementVo agreementVo = new AgreementVo();
        BeanUtils.copyProperties(leaseAgreement, agreementVo);

        agreementVo.setApartmentInfo(apartmentInfo);
        agreementVo.setRoomInfo(roomInfo);
        agreementVo.setPaymentType(paymentType);
        agreementVo.setLeaseTerm(leaseTerm);
        return agreementVo;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateStatusById(Long id, LeaseStatus status) {
        LeaseAgreement leaseAgreement = leaseAgreementMapper.selectById(id);
        if (leaseAgreement == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        LambdaUpdateWrapper<LeaseAgreement> wrapper = new LambdaUpdateWrapper<>();
        wrapper.eq(LeaseAgreement::getId, id).set(LeaseAgreement::getStatus, status);
        if (LeaseStatus.RENEWING.equals(leaseAgreement.getStatus()) && LeaseStatus.SIGNED.equals(status)) {
            wrapper.set(LeaseAgreement::getPaymentStatus, PaymentStatus.WAITING)
                    .set(LeaseAgreement::getPaymentOrderId, null);
        }
        leaseAgreementMapper.update(null, wrapper);
    }

    /**
     * 保存或修改租约信息
     *
     * 新增租约时，如果未显式设置支付状态，则默认置为待支付，
     * 以便用户端首页可以根据 paymentStatus 展示待支付提醒。
     */
    @Override
    public boolean saveOrUpdate(LeaseAgreement entity) {
        if (entity.getId() == null) {
            // 新增租约：如果未设置支付状态，则默认待支付
            if (entity.getPaymentStatus() == null) {
                entity.setPaymentStatus(PaymentStatus.WAITING);
            }
        }
        return super.saveOrUpdate(entity);
    }
}
