package com.atguigu.lease.web.app.config;

import com.atguigu.lease.model.entity.*;
import com.atguigu.lease.model.enums.ItemType;
import com.atguigu.lease.model.enums.LeaseStatus;
import com.atguigu.lease.web.app.mapper.*;
import com.atguigu.lease.web.app.vo.apartment.ApartmentItemVo;
import com.atguigu.lease.web.app.vo.attr.AttrValueVo;
import com.atguigu.lease.web.app.vo.fee.FeeValueVo;
import com.atguigu.lease.web.app.vo.graph.GraphVo;
import com.atguigu.lease.web.app.vo.room.RoomDetailVo;
import com.atguigu.lease.web.app.vo.room.RoomItemVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Description;

import java.math.BigDecimal;
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

    @Autowired
    private LeaseTermMapper leaseTermMapper;

    @Autowired
    private PaymentTypeMapper paymentTypeMapper;

    @Autowired
    private RoomLeaseTermMapper roomLeaseTermMapper;

    @Autowired
    private RoomPaymentTypeMapper roomPaymentTypeMapper;

    @Autowired
    private GraphInfoMapper graphInfoMapper;

    @Autowired
    private LabelInfoMapper labelInfoMapper;

    @Autowired
    private FeeValueMapper feeValueMapper;

    /**
     * 公寓信息查询参数
     * @param apartmentName 公寓名称
     * @param introduction 公寓介绍
     * @param cityName 城市名称
     * @param districtName 区域名称
     * @param provinceName 省份名称
     */
    public record ApartmentOperation(String apartmentName, String introduction, String cityName, String districtName, String provinceName) {

    }

    /**
     * 属性查询参数
     * @param attributeKeyName 属性键名称
     */
    public record AttrOperation(String attributeKeyName) {

    }

    /**
     * 房间属性值查询参数
     * @param attributeValueName 属性值名称
     */
    public record RoomOperation(String attributeValueName) {

    }

    /**
     * 房间状态查询参数
     * @param roomId 房间ID
     */
    public record RoomStatus(Long roomId) {

    }

    /**
     * 房间配套信息查询参数
     * @param roomNumber 房间号
     */
    public record Facility(Long roomNumber) {

    }

    /**
     * 根据房间ID查询房间信息参数
     * @param roomId 房间ID
     */
    public record RoomInfoById(Long roomId) {

    }

    /**
     * 根据公寓名称查询房间号参数
     * @param apartmentName 公寓名称
     */
    public record RoomsByApartmentName(String apartmentName) {

    }

    /**
     * 根据租金范围查询房间参数
     * @param minRent 最小租金
     * @param maxRent 最大租金
     */
    public record RoomByRentRange(BigDecimal minRent, BigDecimal maxRent) {
    }

    /**
     * 根据付款方式查询房间参数
     * @param paymentTypeId 付款方式ID
     */
    public record RoomByPaymentType(Long paymentTypeId) {
    }

    /**
     * 根据租期查询房间参数
     * @param leaseTermId 租期ID
     */
    public record RoomByLeaseTerm(Long leaseTermId) {
    }

    /**
     * 根据公寓ID查询可租房源参数
     * @param apartmentId 公寓ID
     */
    public record AvailableRoomsByApartmentId(Long apartmentId) {
    }

    /**
     * 根据房间ID查询租期信息参数
     * @param roomId 房间ID
     */
    public record LeaseTermInfo(Long roomId) {
    }

    /**
     * 根据房间ID查询付款方式参数
     * @param roomId 房间ID
     */
    public record PaymentTypeInfo(Long roomId) {
    }

    /**
     * 根据公寓ID查询公寓详细信息参数
     * @param apartmentId 公寓ID
     */
    public record ApartmentDetailInfo(Long apartmentId) {
    }

    /**
     * 根据地区信息查询房间参数
     * @param provinceName 省份名称
     * @param cityName 城市名称
     * @param districtName 区域名称
     */
    public record RoomsByRegion(String provinceName, String cityName, String districtName) {
    }

    /**
     * 根据公寓ID查询房间列表参数
     * @param apartmentId 公寓ID
     */
    public record RoomsByApartmentId(Long apartmentId) {
    }

    /**
     * 根据房间ID查询房间详细信息参数
     * @param roomId 房间ID
     */
    public record RoomDetailById(Long roomId) {
    }

    /**
     * 根据房间ID查询配套信息参数
     * @param roomId 房间ID
     */
    public record FacilityByRoomId(Long roomId) {
    }

    /**
     * 公寓信息查询
     *
     * @return
     */
    @Bean
    @Description("根据公寓名称、省份名称、城市名称、区域名称、公寓介绍、查询对应的公寓信息(省份名称,例如：四川省；城市名称（例如眉山市）；区域名称，例如：东坡区)")
    public Function<ApartmentOperation, List<ApartmentInfo>> apartmentOperation() {
        return request -> {
            LambdaQueryWrapper<ApartmentInfo> queryWrapper = new LambdaQueryWrapper<>();
            if (request.apartmentName() != null && !request.apartmentName().isEmpty()) {
                queryWrapper.eq(ApartmentInfo::getName, request.apartmentName);
            }
            if (request.cityName() != null && !request.cityName().isEmpty()) {
                queryWrapper.eq(ApartmentInfo::getCityName, request.cityName);
            }
            if (request.districtName() != null && !request.districtName().isEmpty()) {
                queryWrapper.eq(ApartmentInfo::getDistrictName, request.districtName);
            }
            if (request.introduction() != null && !request.introduction().isEmpty()) {
                queryWrapper.eq(ApartmentInfo::getIntroduction, request.introduction);
            }
            if (request.provinceName() != null && !request.provinceName().isEmpty()) {
                queryWrapper.eq(ApartmentInfo::getProvinceName, request.provinceName);
            }

            return apartmentInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据地区信息查询房间
     *
     * @return
     */
    @Bean
    @Description("根据省份名称、城市名称、区域名称查询房间")
    public Function<RoomsByRegion, List<RoomItemVo>> roomsByRegionOperation() {
        return request -> {
            // 先根据地区信息查询公寓
            LambdaQueryWrapper<ApartmentInfo> apartmentQueryWrapper = new LambdaQueryWrapper<>();
            
            if (request.provinceName() != null && !request.provinceName().isEmpty()) {
                apartmentQueryWrapper.eq(ApartmentInfo::getProvinceName, request.provinceName());
            }
            if (request.cityName() != null && !request.cityName().isEmpty()) {
                apartmentQueryWrapper.eq(ApartmentInfo::getCityName, request.cityName());
            }
            if (request.districtName() != null && !request.districtName().isEmpty()) {
                apartmentQueryWrapper.eq(ApartmentInfo::getDistrictName, request.districtName());
            }
            
            List<ApartmentInfo> apartments = apartmentInfoMapper.selectList(apartmentQueryWrapper);
            List<Long> apartmentIds = apartments.stream().map(ApartmentInfo::getId).toList();
            
            if (apartmentIds.isEmpty()) {
                return new ArrayList<>();
            }
            
            // 再根据公寓ID查询房间
            LambdaQueryWrapper<RoomInfo> roomQueryWrapper = new LambdaQueryWrapper<>();
            roomQueryWrapper.in(RoomInfo::getApartmentId, apartmentIds);
            roomQueryWrapper.eq(RoomInfo::getIsDeleted, 0);
            roomQueryWrapper.eq(RoomInfo::getIsRelease, 1);
            
            List<RoomInfo> roomInfos = roomInfoMapper.selectList(roomQueryWrapper);
            List<RoomItemVo> roomItemVos = new ArrayList<>();
            
            for (RoomInfo roomInfo : roomInfos) {
                RoomItemVo roomItemVo = new RoomItemVo();
                BeanUtils.copyProperties(roomInfo, roomItemVo);
                
                // 查询公寓信息
                ApartmentInfo apartmentInfo = apartmentInfoMapper.selectById(roomInfo.getApartmentId());
                roomItemVo.setApartmentInfo(apartmentInfo);
                
                // 查询房间图片
                List<GraphVo> graphVos = graphInfoMapper.selectListByItemTypeAndId(ItemType.ROOM, roomInfo.getId());
                roomItemVo.setGraphVoList(graphVos);
                
                // 查询房间标签
                List<LabelInfo> labelInfos = labelInfoMapper.selectListByRoomId(roomInfo.getId());
                roomItemVo.setLabelInfoList(labelInfos);
                
                roomItemVos.add(roomItemVo);
            }
            
            return roomItemVos;
        };
    }

    /**
     * 根据公寓ID查询房间列表
     *
     * @return
     */
    @Bean
    @Description("根据公寓ID查询房间列表")
    public Function<RoomsByApartmentId, List<RoomInfo>> roomsByApartmentIdOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getApartmentId, request.apartmentId());
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.eq(RoomInfo::getIsRelease, 1);
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据公寓名称查询所有房间号
     * @return
     */
    @Bean
    @Description("根据公寓名称查询所有房间号")
    public Function<RoomsByApartmentName, List<String>> roomsByApartmentNameOperation() {
        return request -> {
            // 先根据公寓名称查询公寓信息
            LambdaQueryWrapper<ApartmentInfo> apartmentQueryWrapper = new LambdaQueryWrapper<>();
            apartmentQueryWrapper.eq(ApartmentInfo::getName, request.apartmentName);
            ApartmentInfo apartmentInfo = apartmentInfoMapper.selectOne(apartmentQueryWrapper);

            if (apartmentInfo == null) {
                return new ArrayList<>();
            }

            // 根据公寓ID查询所有房间
            LambdaQueryWrapper<RoomInfo> roomQueryWrapper = new LambdaQueryWrapper<>();
            roomQueryWrapper.eq(RoomInfo::getApartmentId, apartmentInfo.getId());
            List<RoomInfo> roomInfos = roomInfoMapper.selectList(roomQueryWrapper);

            // 提取房间号
            return roomInfos.stream()
                    .map(RoomInfo::getRoomNumber)
                    .toList();
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
    public Function<RoomOperation, List<Long>> roomIdsByAttrValueOperation() {
        return request -> {
            LambdaQueryWrapper<AttrValue> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(AttrValue::getName, request.attributeValueName());
            AttrValue attrValue = attrValueMapper.selectOne(queryWrapper);
            
            if (attrValue == null) {
                return new ArrayList<>();
            }

            Long id = attrValue.getId();

            LambdaQueryWrapper<RoomAttrValue> queryWrapper1 = new LambdaQueryWrapper<>();
            queryWrapper1.eq(RoomAttrValue::getAttrValueId, id);
            List<RoomAttrValue> roomAttrValues = roomAttrValueMapper.selectList(queryWrapper1);

            List<Long> roomIds = new ArrayList<>();
            for (RoomAttrValue roomAttrValue : roomAttrValues) {
                Long roomId = roomAttrValue.getRoomId();
                RoomInfo roomInfo = roomInfoMapper.selectById(roomId);
                if (roomInfo != null) {
                    roomIds.add(roomInfo.getId());
                }
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
     * 根据房间ID查询房间详细信息
     *
     * @return
     */
    @Bean
    @Description("根据房间ID查询房间详细信息")
    public Function<RoomDetailById, RoomDetailVo> roomDetailOperation() {
        return request -> {
            RoomInfo roomInfo = roomInfoMapper.selectById(request.roomId());
            if (roomInfo == null) {
                return null;
            }

            RoomDetailVo roomDetailVo = new RoomDetailVo();
            BeanUtils.copyProperties(roomInfo, roomDetailVo);

            // 查询公寓信息
            ApartmentInfo apartmentInfo = apartmentInfoMapper.selectById(roomInfo.getApartmentId());
            if (apartmentInfo != null) {
                ApartmentItemVo apartmentItemVo = new ApartmentItemVo();
                BeanUtils.copyProperties(apartmentInfo, apartmentItemVo);
                roomDetailVo.setApartmentItemVo(apartmentItemVo);
            }

            // 查询图片
            List<GraphVo> graphVos = graphInfoMapper.selectListByItemTypeAndId(ItemType.ROOM, roomInfo.getId());
            roomDetailVo.setGraphVoList(graphVos);

            // 查询属性值
            List<AttrValueVo> attrValueVos = attrValueMapper.selectListByRoomId(roomInfo.getId());
            roomDetailVo.setAttrValueVoList(attrValueVos);

            // 查询配套信息
            List<FacilityInfo> facilityInfos = facilityInfoMapper.selectListByRoomId(roomInfo.getId());
            roomDetailVo.setFacilityInfoList(facilityInfos);

            // 查询标签
            List<LabelInfo> labelInfos = labelInfoMapper.selectListByRoomId(roomInfo.getId());
            roomDetailVo.setLabelInfoList(labelInfos);

            // 查询支付方式
            List<PaymentType> paymentTypes = paymentTypeMapper.selectListByRoomId(roomInfo.getId());
            roomDetailVo.setPaymentTypeList(paymentTypes);

            // 查询杂费
            List<FeeValueVo> feeValueVos = feeValueMapper.selectListByApartmentId(roomInfo.getApartmentId());
            roomDetailVo.setFeeValueVoList(feeValueVos);

            // 查询租期
            List<LeaseTerm> leaseTerms = leaseTermMapper.selectListByRoomId(roomInfo.getId());
            roomDetailVo.setLeaseTermList(leaseTerms);

            return roomDetailVo;
        };
    }

    /**
     * 房间状态查询
     * @return
     */
    @Bean
    @Description("根据房间id查询对应的房间状态")
    public Function<RoomStatus, LeaseStatus> roomStatusOperation() {
        return request -> {
            LambdaQueryWrapper<LeaseAgreement> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(LeaseAgreement::getRoomId, request.roomId);
            queryWrapper.eq(LeaseAgreement::getIsDeleted, 0);
            LeaseAgreement leaseAgreement = leaseAgreementMapper.selectOne(queryWrapper);

            return leaseAgreement != null ? leaseAgreement.getStatus() : null;
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
            List<RoomInfo> roomInfos = roomInfoMapper.selectList(queryWrapper);
            
            if (roomInfos.isEmpty()) {
                return new ArrayList<>(); // 如果没有找到房间，返回空列表
            }
            
            // 使用第一个房间来获取设施信息
            RoomInfo roomInfo = roomInfos.get(0);
            Long id = roomInfo.getId();
            List<FacilityInfo> facilityInfos = facilityInfoMapper.selectListByRoomId(id);
            return facilityInfos;
        };
    }
    
    /**
     * 根据房间ID查询配套信息
     * @return
     */
    @Bean
    @Description("根据房间ID查询配套信息")
    public Function<FacilityByRoomId, List<FacilityInfo>> facilityByRoomIdOperation() {
        return request -> facilityInfoMapper.selectListByRoomId(request.roomId());
    }

    /**
     * 根据租金范围查询房间
     * @return
     */
    @Bean
    @Description("根据租金范围查询房间")
    public Function<RoomByRentRange, List<RoomInfo>> roomByRentRangeOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.ge(request.minRent != null, RoomInfo::getRent, request.minRent);
            queryWrapper.le(request.maxRent != null, RoomInfo::getRent, request.maxRent);
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据付款方式查询房间
     * @return
     */
    @Bean
    @Description("根据付款方式查询房间")
    public Function<RoomByPaymentType, List<RoomInfo>> roomByPaymentTypeOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.inSql(RoomInfo::getId, 
                "SELECT room_id FROM room_payment_type WHERE payment_type_id = " + request.paymentTypeId() + " AND is_deleted = 0");
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据租期查询房间
     * @return
     */
    @Bean
    @Description("根据租期查询房间")
    public Function<RoomByLeaseTerm, List<RoomInfo>> roomByLeaseTermOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.inSql(RoomInfo::getId, 
                "SELECT room_id FROM room_lease_term WHERE lease_term_id = " + request.leaseTermId() + " AND is_deleted = 0");
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据公寓ID查询可租房源
     * @return
     */
    @Bean
    @Description("根据公寓ID查询可租房源")
    public Function<AvailableRoomsByApartmentId, List<RoomInfo>> availableRoomsByApartmentIdOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getApartmentId, request.apartmentId());
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.eq(RoomInfo::getIsRelease, 1);
            // 排除已出租的房间
            queryWrapper.notInSql(RoomInfo::getId, 
                "SELECT room_id FROM lease_agreement WHERE is_deleted = 0 AND status IN (2, 5)");
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据房间ID查询租期信息
     * @return
     */
    @Bean
    @Description("根据房间ID查询租期信息")
    public Function<LeaseTermInfo, List<LeaseTerm>> leaseTermInfoOperation() {
        return request -> {
            LambdaQueryWrapper<RoomLeaseTerm> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomLeaseTerm::getRoomId, request.roomId());
            queryWrapper.eq(RoomLeaseTerm::getIsDeleted, 0);
            
            List<RoomLeaseTerm> roomLeaseTerms = roomLeaseTermMapper.selectList(queryWrapper);
            List<LeaseTerm> leaseTerms = new ArrayList<>();
            for (RoomLeaseTerm roomLeaseTerm : roomLeaseTerms) {
                LeaseTerm leaseTerm = leaseTermMapper.selectById(roomLeaseTerm.getLeaseTermId());
                if (leaseTerm != null) {
                    leaseTerms.add(leaseTerm);
                }
            }
            return leaseTerms;
        };
    }

    /**
     * 根据房间ID查询付款方式
     * @return
     */
    @Bean
    @Description("根据房间ID查询付款方式")
    public Function<PaymentTypeInfo, List<PaymentType>> paymentTypeInfoOperation() {
        return request -> {
            LambdaQueryWrapper<RoomPaymentType> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomPaymentType::getRoomId, request.roomId());
            queryWrapper.eq(RoomPaymentType::getIsDeleted, 0);
            
            List<RoomPaymentType> roomPaymentTypes = roomPaymentTypeMapper.selectList(queryWrapper);
            List<PaymentType> paymentTypes = new ArrayList<>();
            for (RoomPaymentType roomPaymentType : roomPaymentTypes) {
                PaymentType paymentType = paymentTypeMapper.selectById(roomPaymentType.getPaymentTypeId());
                if (paymentType != null) {
                    paymentTypes.add(paymentType);
                }
            }
            return paymentTypes;
        };
    }

    /**
     * 根据公寓ID查询公寓详细信息
     * @return
     */
    @Bean
    @Description("根据公寓ID查询公寓详细信息")
    public Function<ApartmentDetailInfo, ApartmentInfo> apartmentDetailInfoOperation() {
        return request -> {
            return apartmentInfoMapper.selectById(request.apartmentId());
        };
    }
}