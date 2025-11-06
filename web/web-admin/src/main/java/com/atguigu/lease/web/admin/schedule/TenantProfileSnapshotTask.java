package com.atguigu.lease.web.admin.schedule;

import com.atguigu.lease.web.admin.service.TenantProfileFeatureService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

@Component
@RequiredArgsConstructor
@Slf4j
public class TenantProfileSnapshotTask {

    private final TenantProfileFeatureService tenantProfileFeatureService;

    /**
     * 每天 01:00 生成上一日画像快照
     */
    @Scheduled(cron = "0 0 1 * * ?")
//    @Scheduled(initialDelay = 0, fixedDelay = 5000)
    public void refreshYesterdaySnapshot() {
        LocalDate targetDate = LocalDate.now().minusDays(1);
        tenantProfileFeatureService.refreshTenantProfiles(targetDate);
    }
}