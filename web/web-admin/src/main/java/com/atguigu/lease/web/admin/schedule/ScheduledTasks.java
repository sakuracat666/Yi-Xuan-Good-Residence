package com.atguigu.lease.web.admin.schedule;

import com.atguigu.lease.model.entity.LeaseAgreement;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.web.admin.service.LeaseAgreementService;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class ScheduledTasks {

    @Autowired
    private LeaseAgreementService leaseAgreementService;
    /**
     * 定时任务：检查租赁协议状态
     * 每天午夜运行，将已过期且状态为“已签署”或“正在撤回”的租赁协议状态更新为“已过期”
     */
    @Scheduled(cron = "0 0 0 * * *")
    public void checkLeaseStatus(){
        // 创建一个更新操作的条件构造器
        LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();

        // 设置更新条件：租赁协议的结束日期小于等于当前日期
        updateWrapper.le(LeaseAgreement::getLeaseEndDate, new Date());
        // 设置更新条件：租赁协议的状态为“已签约”或“退租待确认”时，更新为“已过期”，避免影响历史数据
        updateWrapper.in(LeaseAgreement::getStatus, LeaseStatus.SIGNED, LeaseStatus.WITHDRAWING);

        // 设置需要更新的字段：将符合条件的租赁协议的状态更新为“已过期”
        updateWrapper.set(LeaseAgreement::getStatus, LeaseStatus.EXPIRED);
        // 执行更新操作
        leaseAgreementService.update(updateWrapper);
    }


}
