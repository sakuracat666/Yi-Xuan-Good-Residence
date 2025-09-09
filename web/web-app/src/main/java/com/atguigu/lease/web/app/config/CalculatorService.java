package com.atguigu.lease.web.app.config;

import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.web.app.mapper.*;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Description;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

@Configuration
public class CalculatorService {

    @Autowired
    private ApartmentInfoMapper apartmentInfoMapper;

    @Autowired
    private AttrKeyMapper attrKeyMapper;

    @Autowired
    private AttrValueMapper attrValueMapper;

    @Autowired
    private RoomInfoMapper roomInfoMapper;

    @Autowired
    private RoomAttrValueMapper roomAttrValueMapper;

    @Autowired
    private LeaseAgreementMapper leaseAgreementMapper;

    @Autowired
    private FacilityInfoMapper facilityInfoMapper;

    @Autowired
    private RoomFacilityMapper roomFacilityMapper;

    public record ApartmentOperation(String apartmentName, String introduction, String districtName, String provinceName) {

    }

    public record AttrOperation(String attributeKeyName) {

    }

    public record RoomOperation(String attributeValueName) {

    }

    public record RoomStatus(Long roomId) {

    }

    public record Facility(Long roomNumber) {

    }

    public record RoomInfoById(Long roomId) {

    }

    public record ApartmentByProvinceNameOrCity(String districtName, String provinceName) {

    }


    /**
     * 公寓信息查询
     *
     * @return
     */
    @Bean
    @Description("根据公寓名称、区域名称、公寓介绍、查询对应的公寓信息")
    public Function<ApartmentOperation, ApartmentInfo> apartmentOperation() {
        return request -> {
            LambdaQueryWrapper<ApartmentInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(ApartmentInfo::getName, request.apartmentName);
            queryWrapper.eq(ApartmentInfo::getDistrictName, request.districtName);
            queryWrapper.eq(ApartmentInfo::getIntroduction, request.introduction);
            queryWrapper.eq(ApartmentInfo::getProvinceName, request.provinceName);

            return apartmentInfoMapper.selectOne(queryWrapper);
        };
    }


    /**
     * 房间属性查询
     *
     * @return
     */
    @Bean
    @Description("根据房间属性名称查询对应的属性值")
    public Function<AttrOperation, List<AttrValue>> attrOperation() {
        return request -> {
            LambdaQueryWrapper<AttrKey> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(AttrKey::getName, request.attributeKeyName());
            List<AttrKey> attrKeys = attrKeyMapper.selectList(queryWrapper);

            List<AttrValue> attrValues = new ArrayList<>();

            for (AttrKey attrKey : attrKeys) {
                LambdaQueryWrapper<AttrValue> queryWrapper1 = new LambdaQueryWrapper<>();
                queryWrapper1.eq(AttrValue::getAttrKeyId, attrKey.getId());
                List<AttrValue> attrValues1 = attrValueMapper.selectList(queryWrapper1);
                attrValues.addAll(attrValues1);
            }
            return attrValues;
        };
    }

    /**
     * 房间信息查询
     *
     * @return
     */
    @Bean
    @Description("根据房间属性值查询对应的房间id")
    public Function<RoomOperation, List<Long>> apartmentInfoOperation() {
        return request -> {
            LambdaQueryWrapper<AttrValue> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(AttrValue::getName, request.attributeValueName());
            AttrValue attrValue = attrValueMapper.selectOne(queryWrapper);
            Long id = attrValue.getId();

            LambdaQueryWrapper<RoomAttrValue> queryWrapper1 = new LambdaQueryWrapper<>();
            queryWrapper1.eq(RoomAttrValue::getAttrValueId, id);
            List<RoomAttrValue> roomAttrValues = roomAttrValueMapper.selectList(queryWrapper1);

            List<Long> roomIds = new ArrayList<>();
            for (RoomAttrValue roomAttrValue : roomAttrValues) {
                Long roomId = roomAttrValue.getRoomId();
                RoomInfo roomInfo = roomInfoMapper.selectById(roomId);
                roomIds.add(roomInfo.getId());
            }
            return roomIds;
        };
    }


    @Bean
    @Description("根据房间id查询对应的房间信息")
    public Function<RoomInfoById, RoomInfo> roomInfoOperation() {
        return request -> {
            return roomInfoMapper.selectById(request.roomId);
        };
    }

    /**
     * 房间状态查询
     * @return
     */
    @Bean
    @Description("根据房间id查询对应的房间状态")
    public Function<RoomStatus, String> roomStatusOperation() {
        return request -> {
            LambdaQueryWrapper<LeaseAgreement> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(LeaseAgreement::getRoomId, request.roomId);
            queryWrapper.eq(LeaseAgreement::getIsDeleted, 0);
            LeaseAgreement leaseAgreement = leaseAgreementMapper.selectOne(queryWrapper);

            return String.valueOf(leaseAgreement.getStatus());
        };
    }

    /**
     * 根据房间号查询对应的配套信息
     * @return
     */
    @Bean
    @Description("根据房间号查询对应的配套信息")
    public Function<Facility, List<FacilityInfo>> facilityOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getRoomNumber, request.roomNumber);
            RoomInfo roomInfo = roomInfoMapper.selectOne(queryWrapper);

            Long id = roomInfo.getId();
            List<FacilityInfo> facilityInfos = facilityInfoMapper.selectListByRoomId(id);
            return facilityInfos;
        };
    }

    /**
     * 根据省份或区域名称查询相关的公寓信息
     * @return
     */
    @Bean
    @Description("根据省份或区域名称查询相关的公寓信息")
    public Function<ApartmentByProvinceNameOrCity, List<ApartmentInfo>> apartmentByProvinceNameOrCity() {
        return request -> {
            LambdaQueryWrapper<ApartmentInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(ApartmentInfo::getProvinceName, request.provinceName);
            queryWrapper.eq(ApartmentInfo::getDistrictName, request.districtName);
            return apartmentInfoMapper.selectList(queryWrapper);
        };
    }
    
}