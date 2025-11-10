package com.atguigu.lease.web.admin.service.impl;

import com.atguigu.lease.common.exception.LeaseException;
import com.atguigu.lease.common.result.ResultCodeEnum;
import com.atguigu.lease.model.entity.RepairAttachment;
import com.atguigu.lease.model.entity.RepairProgress;
import com.atguigu.lease.model.entity.RepairRequest;
import com.atguigu.lease.model.enums.RepairStatus;
import com.atguigu.lease.web.admin.mapper.RepairAttachmentMapper;
import com.atguigu.lease.web.admin.mapper.RepairProgressMapper;
import com.atguigu.lease.web.admin.mapper.RepairRequestMapper;
import com.atguigu.lease.web.admin.service.RepairManageService;
import com.atguigu.lease.web.admin.vo.repair.RepairAssignVo;
import com.atguigu.lease.web.admin.vo.repair.RepairAttachmentVo;
import com.atguigu.lease.web.admin.vo.repair.RepairDetailVo;
import com.atguigu.lease.web.admin.vo.repair.RepairItemVo;
import com.atguigu.lease.web.admin.vo.repair.RepairProgressSubmitVo;
import com.atguigu.lease.web.admin.vo.repair.RepairProgressVo;
import com.atguigu.lease.web.admin.vo.repair.RepairQueryVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 报修管理服务实现
 */
@Service
public class RepairManageServiceImpl extends ServiceImpl<RepairRequestMapper, RepairRequest>
        implements RepairManageService {

    @Autowired
    private RepairRequestMapper repairRequestMapper;
    @Autowired
    private RepairAttachmentMapper repairAttachmentMapper;
    @Autowired
    private RepairProgressMapper repairProgressMapper;

    @Override
    public IPage<RepairItemVo> pageRepair(Page<RepairItemVo> page, RepairQueryVo queryVo) {
        return repairRequestMapper.pageRepair(page, queryVo);
    }

    @Override
    public RepairDetailVo getDetail(Long id) {
        RepairDetailVo detailVo = repairRequestMapper.selectDetailById(id);
        if (detailVo == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        detailVo.setAttachments(buildAttachmentList(id));
        detailVo.setProgresses(repairProgressMapper.listVoByRequestId(id));
        return detailVo;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void assignRepair(Long repairId, RepairAssignVo assignVo, Long operatorId) {
        RepairRequest repairRequest = getValidRepair(repairId);
        repairRequest.setHandlerId(assignVo.getHandlerId());
        if (assignVo.getAppointmentTime() != null) {
            repairRequest.setAppointmentTime(assignVo.getAppointmentTime());
        }
        if (assignVo.getPriority() != null) {
            repairRequest.setPriority(assignVo.getPriority());
        }
        if (StringUtils.hasText(assignVo.getRemark())) {
            repairRequest.setRemark(assignVo.getRemark());
        }
        repairRequest.setStatus(RepairStatus.IN_PROGRESS);
        updateById(repairRequest);

        String content = StringUtils.hasText(assignVo.getContent()) ? assignVo.getContent() : "管理员指派报修";
        saveProgressRecord(repairId, operatorId, RepairStatus.IN_PROGRESS, content);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void addProgress(Long repairId, RepairProgressSubmitVo progressVo, Long operatorId) {
        getValidRepair(repairId);
        saveProgressRecord(repairId, operatorId, progressVo.getStatus(), progressVo.getContent());
        updateStatusInternal(repairId, progressVo.getStatus(), operatorId, false);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateStatus(Long repairId, RepairStatus status, Long operatorId) {
        updateStatusInternal(repairId, status, operatorId, true);
    }

    private List<RepairAttachmentVo> buildAttachmentList(Long repairId) {
        LambdaQueryWrapper<RepairAttachment> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(RepairAttachment::getRequestId, repairId)
                .eq(RepairAttachment::getIsDeleted, (byte) 0)
                .orderByAsc(RepairAttachment::getCreateTime);
        List<RepairAttachment> attachments = repairAttachmentMapper.selectList(wrapper);
        if (CollectionUtils.isEmpty(attachments)) {
            return new ArrayList<>();
        }
        List<RepairAttachmentVo> voList = new ArrayList<>(attachments.size());
        for (RepairAttachment attachment : attachments) {
            RepairAttachmentVo vo = new RepairAttachmentVo();
            vo.setUrl(attachment.getUrl());
            vo.setType(attachment.getType());
            voList.add(vo);
        }
        return voList;
    }

    private RepairRequest getValidRepair(Long repairId) {
        RepairRequest repairRequest = this.getById(repairId);
        if (repairRequest == null) {
            throw new LeaseException(ResultCodeEnum.DATA_ERROR);
        }
        return repairRequest;
    }

    private void saveProgressRecord(Long repairId, Long operatorId, RepairStatus status, String content) {
        RepairProgress progress = new RepairProgress();
        progress.setRequestId(repairId);
        progress.setStatus(status);
        progress.setContent(content);
        progress.setOperatorId(operatorId);
        progress.setOperatorRole("ADMIN");
        repairProgressMapper.insert(progress);
    }

    private void updateStatusInternal(Long repairId, RepairStatus status, Long operatorId, boolean createProgressIfMissing) {
        RepairRequest repairRequest = getValidRepair(repairId);
        repairRequest.setStatus(status);
        if (status == RepairStatus.COMPLETED || status == RepairStatus.CANCELED) {
            repairRequest.setFinishTime(new Date());
        } else {
            repairRequest.setFinishTime(null);
        }
        updateById(repairRequest);

        if (createProgressIfMissing) {
            saveProgressRecord(repairId, operatorId, status, status.getName());
        }
    }
}
