package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.model.enums.RepairPriority;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.app.mapper.*;
import com.atguigu.lease.web.app.service.RepairService;
import com.atguigu.lease.web.app.vo.repair.*;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * 报修业务实现类
 */
@Service
public class RepairServiceImpl extends ServiceImpl<RepairRequestMapper, RepairRequest> implements RepairService {

    @Autowired
    private RepairAttachmentMapper repairAttachmentMapper;
    @Autowired
    private RepairProgressMapper repairProgressMapper;
    @Autowired
    private RoomInfoMapper roomInfoMapper;
    @Autowired
    private ApartmentInfoMapper apartmentInfoMapper;
    @Autowired
    private LeaseAgreementMapper leaseAgreementMapper;

    /**
     * 提交报修
     *
     * @param userId   租客ID
     * @param submitVo 报修提交参数
     */
    @Override
    public void submitRepair(Long userId, RepairSubmitVo submitVo) {
        RoomInfo roomInfo = roomInfoMapper.selectById(submitVo.getRoomId());
        if (roomInfo == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        RepairRequest repairRequest = new RepairRequest();
        repairRequest.setUserId(userId);
        repairRequest.setRoomId(submitVo.getRoomId());
        repairRequest.setTitle(submitVo.getTitle());
        repairRequest.setDescription(submitVo.getDescription());
        repairRequest.setPriority(submitVo.getPriority() != null ? submitVo.getPriority() : RepairPriority.MEDIUM);
        repairRequest.setStatus(RepairStatus.PENDING);
        repairRequest.setAppointmentTime(
                submitVo.getAppointmentTime() != null ? java.sql.Timestamp.valueOf(submitVo.getAppointmentTime())
                        : null);
        repairRequest
                .setContactPhone(StringUtils.hasText(submitVo.getContactPhone()) ? submitVo.getContactPhone() : null);
        this.save(repairRequest);

        saveAttachments(repairRequest.getId(), submitVo.getAttachmentUrls());
        saveInitialProgress(repairRequest.getId(), userId);
    }

    /**
     * 分页查询报修列表
     *
     * @param page   分页参数
     * @param userId 租客ID
     * @param status 报修状态
     * @return 报修分页数据
     */
    @Override
    public IPage<RepairItemVo> pageUserRepairs(Page<RepairItemVo> page, Long userId, RepairStatus status) {
        return this.baseMapper.pageUserRepairs(page, userId, status);
    }

    /**
     * 查询报修详情
     *
     * @param userId   租客ID
     * @param repairId 报修ID
     * @return 报修详情
     */
    @Override
    public RepairDetailVo getRepairDetail(Long userId, Long repairId) {
        RepairRequest repairRequest = this.getById(repairId);
        if (repairRequest == null || !repairRequest.getUserId().equals(userId)) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }

        RepairDetailVo detailVo = new RepairDetailVo();
        BeanUtils.copyProperties(repairRequest, detailVo);
        detailVo.setAttachments(buildAttachmentVos(repairId));
        detailVo.setProgresses(buildProgressVos(repairId));
        return detailVo;
    }

    /**
     * 撤销报修
     *
     * @param userId   租客ID
     * @param repairId 报修ID
     */
    @Override
    public void cancelRepair(Long userId, Long repairId) {
        RepairRequest repairRequest = this.getById(repairId);
        if (repairRequest == null || !repairRequest.getUserId().equals(userId)) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        if (repairRequest.getStatus() != RepairStatus.PENDING) {
            throw new LeaseException(ResultCodeEnum.ILLEGAL_REQUEST);
        }
        repairRequest.setStatus(RepairStatus.CANCELED);
        repairRequest.setFinishTime(new Date());
        this.updateById(repairRequest);

        saveProgress(repairId, userId, RepairStatus.CANCELED, "租客撤销报修");
    }

    /**
     * 获取所有房间信息
     *
     * @return 房间列表
     */
    @Override
    public List<RepairRoomNumberApartIdVo> getAllRooms(String phone) {
        if (!StringUtils.hasText(phone)) {
            return new ArrayList<>();
        }

        LambdaQueryWrapper<LeaseAgreement> agreementWrapper = new LambdaQueryWrapper<>();
        agreementWrapper.eq(LeaseAgreement::getPhone, phone)
                .in(LeaseAgreement::getStatus, LeaseStatus.SIGNED, LeaseStatus.WITHDRAWING, LeaseStatus.RENEWING)
                .orderByDesc(LeaseAgreement::getCreateTime)
                .last("limit 1");
        LeaseAgreement agreement = leaseAgreementMapper.selectOne(agreementWrapper);
        if (agreement == null || agreement.getRoomId() == null) {
            return new ArrayList<>();
        }

        RoomInfo roomInfo = roomInfoMapper.selectById(agreement.getRoomId());
        if (roomInfo == null) {
            return new ArrayList<>();
        }

        String apartmentName = "";
        if (roomInfo.getApartmentId() != null) {
            ApartmentInfo apartmentInfo = apartmentInfoMapper.selectById(roomInfo.getApartmentId());
            if (apartmentInfo != null) {
                apartmentName = apartmentInfo.getName();
            }
        }

        RepairRoomNumberApartIdVo vo = new RepairRoomNumberApartIdVo();
        vo.setRoomId(roomInfo.getId());
        vo.setRoomNumber(roomInfo.getRoomNumber());
        vo.setApartmentName(apartmentName);
        return Collections.singletonList(vo);
    }

    /**
     * 保存附件列表
     */
    private void saveAttachments(Long requestId, List<String> attachmentUrls) {
        if (CollectionUtils.isEmpty(attachmentUrls)) {
            return;
        }
        List<RepairAttachment> attachments = new ArrayList<>();
        for (String url : attachmentUrls) {
            RepairAttachment attachment = new RepairAttachment();
            attachment.setRequestId(requestId);
            attachment.setUrl(url);
            attachment.setType("image");
            attachments.add(attachment);
        }
        attachments.forEach(repairAttachmentMapper::insert);
    }

    /**
     * 记录初始进度
     */
    private void saveInitialProgress(Long requestId, Long userId) {
        saveProgress(requestId, userId, RepairStatus.PENDING, "租客提交报修");
    }

    /**
     * 保存进度
     */
    private void saveProgress(Long requestId, Long operatorId, RepairStatus status, String content) {
        RepairProgress progress = new RepairProgress();
        progress.setRequestId(requestId);
        progress.setStatus(status);
        progress.setContent(content);
        progress.setOperatorId(operatorId);
        progress.setOperatorRole("TENANT");
        repairProgressMapper.insert(progress);
    }

    /**
     * 构建附件返回数据
     */
    private List<RepairAttachmentVo> buildAttachmentVos(Long requestId) {
        LambdaQueryWrapper<RepairAttachment> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(RepairAttachment::getRequestId, requestId).eq(RepairAttachment::getIsDeleted, (byte) 0);
        List<RepairAttachment> attachments = repairAttachmentMapper.selectList(wrapper);
        List<RepairAttachmentVo> result = new ArrayList<>();
        for (RepairAttachment attachment : attachments) {
            RepairAttachmentVo vo = new RepairAttachmentVo();
            vo.setUrl(attachment.getUrl());
            vo.setType(attachment.getType());
            result.add(vo);
        }
        return result;
    }

    /**
     * 构建进度返回数据
     */
    private List<RepairProgressVo> buildProgressVos(Long requestId) {
        LambdaQueryWrapper<RepairProgress> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(RepairProgress::getRequestId, requestId)
                .eq(RepairProgress::getIsDeleted, (byte) 0)
                .orderByAsc(RepairProgress::getCreateTime);
        List<RepairProgress> progresses = repairProgressMapper.selectList(wrapper);
        List<RepairProgressVo> result = new ArrayList<>();
        for (RepairProgress progress : progresses) {
            RepairProgressVo vo = new RepairProgressVo();
            vo.setStatus(progress.getStatus());
            vo.setContent(progress.getContent());
            vo.setOperatorRole(progress.getOperatorRole());
            vo.setCreateTime(progress.getCreateTime());
            result.add(vo);
        }
        return result;
    }
}
