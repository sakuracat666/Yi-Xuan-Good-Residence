package com.atguigu.lease.web.app.service;

import com.atguigu.lease.model.entity.ViewAppointment;
import com.atguigu.lease.web.app.vo.appointment.AppointmentDetailVo;
import com.atguigu.lease.web.app.vo.appointment.AppointmentItemVo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
* @author liubo
* @description 针对表【view_appointment(预约看房信息表)】的数据库操作Service
* @createDate 2023-07-26 11:12:39
*/
public interface ViewAppointmentService extends IService<ViewAppointment> {
    /**
     * 根据用户id查询预约看房信息
     * @param userId
     * @return
     */
    List<AppointmentItemVo> listItemByUserId(Long userId);

    /**
     * 根据预约看房信息id查询预约看房详情信息
     * @param id
     * @return
     */
    AppointmentDetailVo getDetailById(Long id);
}
