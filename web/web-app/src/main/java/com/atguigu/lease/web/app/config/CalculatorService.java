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
     * 
     * @param apartmentName 公寓名称
     * @param introduction  公寓介绍
     * @param cityName      城市名称
     * @param districtName  区域名称
     * @param provinceName  省份名称
     */
    public record ApartmentOperation(String apartmentName, String introduction, String cityName, String districtName,
            String provinceName) {

    }

    /**
     * 属性查询参数
     * 
     * @param attributeKeyName 属性键名称
     */
    public record AttrOperation(String attributeKeyName) {

    }

    /**
     * 房间属性值查询参数
     * 
     * @param attributeValueName 属性值名称
     */
    public record ApartmentInfoOperation(String attributeValueName) {

    }

    /**
     * 房间状态查询参数
     * 
     * @param roomId 房间ID
     */
    public record RoomStatus(Long roomId) {

    }

    /**
     * 房间配套信息查询参数
     * 
     * @param roomNumber 房间号
     */
    public record Facility(Long roomNumber) {

    }

    /**
     * 根据房间ID查询房间信息参数
     * 
     * @param roomId 房间ID
     */
    public record RoomInfoById(Long roomId) {

    }

    /**
     * 根据公寓名称查询房间号参数
     * 
     * @param apartmentName 公寓名称
     */
    public record RoomsByApartmentName(String apartmentName) {

    }

    /**
     * 根据租金范围查询房间参数
     * 
     * @param minRent 最小租金
     * @param maxRent 最大租金
     */
    public record RoomByRentRange(BigDecimal minRent, BigDecimal maxRent) {
    }

    /**
     * 根据付款方式查询房间参数
     * 
     * @param paymentTypeId 付款方式ID
     */
    public record RoomByPaymentType(Long paymentTypeId) {
    }

    /**
     * 根据租期查询房间参数
     * 
     * @param leaseTermId 租期ID
     */
    public record RoomByLeaseTerm(Long leaseTermId) {
    }

    /**
     * 根据公寓ID查询可租房源参数
     * 
     * @param apartmentId 公寓ID
     */
    public record AvailableRoomsByApartmentId(Long apartmentId) {
    }

    /**
     * 根据房间ID查询租期信息参数
     * 
     * @param roomId 房间ID
     */
    public record LeaseTermInfo(Long roomId) {
    }

    /**
     * 根据房间ID查询付款方式参数
     * 
     * @param roomId 房间ID
     */
    public record PaymentTypeInfo(Long roomId) {
    }

    /**
     * 根据公寓ID查询公寓详细信息参数
     * 
     * @param apartmentId 公寓ID
     */
    public record ApartmentDetailInfo(Long apartmentId) {
    }

    /**
     * 根据地区信息查询房间参数
     * 
     * @param provinceName 省份名称
     * @param cityName     城市名称
     * @param districtName 区域名称
     */
    public record RoomsByRegion(String provinceName, String cityName, String districtName) {
    }

    /**
     * 根据公寓ID查询房间列表参数
     * 
     * @param apartmentId 公寓ID
     */
    public record RoomsByApartmentId(Long apartmentId) {
    }

    /**
     * 根据房间ID查询房间详细信息参数
     * 
     * @param roomId 房间ID
     */
    public record RoomDetailById(Long roomId) {
    }

    /**
     * 根据房间ID查询配套信息参数
     * 
     * @param roomId 房间ID
     */
    public record FacilityByRoomId(Long roomId) {
    }

    /**
     * 根据付款方式名称查询房间参数
     * 
     * @param paymentTypeName 付款方式名称（如：押一付一、押一付三等）
     */
    public record RoomByPaymentTypeName(String paymentTypeName) {
    }

    /**
     * 根据租期名称查询房间参数
     * 
     * @param leaseTermName 租期名称（如：1个月、3个月、6个月、1年等）
     */
    public record RoomByLeaseTermName(String leaseTermName) {
    }

    /**
     * 根据面积范围查询房间参数
     * 
     * @param minArea 最小面积（平方米）
     * @param maxArea 最大面积（平方米）
     */
    public record RoomByAreaRange(BigDecimal minArea, BigDecimal maxArea) {
    }

    /**
     * 多条件组合查询房间参数
     * 
     * @param provinceName    省份名称
     * @param cityName        城市名称
     * @param districtName    区域名称
     * @param minRent         最低租金
     * @param maxRent         最高租金
     * @param paymentTypeName 付款方式名称
     * @param leaseTermName   租期名称
     */
    public record RoomByMultiCondition(
            String provinceName,
            String cityName,
            String districtName,
            BigDecimal minRent,
            BigDecimal maxRent,
            String paymentTypeName,
            String leaseTermName) {
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
                queryWrapper.like(ApartmentInfo::getCityName, request.cityName());
            }
            if (request.districtName() != null && !request.districtName().isEmpty()) {
                queryWrapper.like(ApartmentInfo::getDistrictName, request.districtName());
            }
            if (request.introduction() != null && !request.introduction().isEmpty()) {
                queryWrapper.eq(ApartmentInfo::getIntroduction, request.introduction);
            }
            if (request.provinceName() != null && !request.provinceName().isEmpty()) {
                queryWrapper.like(ApartmentInfo::getProvinceName, request.provinceName());
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
                apartmentQueryWrapper.like(ApartmentInfo::getProvinceName, request.provinceName());
            }
            if (request.cityName() != null && !request.cityName().isEmpty()) {
                apartmentQueryWrapper.like(ApartmentInfo::getCityName, request.cityName());
            }
            if (request.districtName() != null && !request.districtName().isEmpty()) {
                apartmentQueryWrapper.like(ApartmentInfo::getDistrictName, request.districtName());
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
    @Description("根据公寓ID查询房间列表，包含房间图片的完整URL地址")
    public Function<RoomsByApartmentId, List<RoomItemVo>> roomsByApartmentIdOperation() {
        return request -> {
            // 先根据公寓ID查询公寓
            LambdaQueryWrapper<ApartmentInfo> apartmentQueryWrapper = new LambdaQueryWrapper<>();
            apartmentQueryWrapper.eq(ApartmentInfo::getId, request.apartmentId());
            apartmentQueryWrapper.eq(ApartmentInfo::getIsDeleted, 0);
            ApartmentInfo apartmentInfo = apartmentInfoMapper.selectOne(apartmentQueryWrapper);

            if (apartmentInfo == null) {
                return new ArrayList<>();
            }

            // 再根据公寓ID查询房间
            LambdaQueryWrapper<RoomInfo> roomQueryWrapper = new LambdaQueryWrapper<>();
            roomQueryWrapper.eq(RoomInfo::getApartmentId, request.apartmentId());
            roomQueryWrapper.eq(RoomInfo::getIsDeleted, 0);
            roomQueryWrapper.eq(RoomInfo::getIsRelease, 1);
            List<RoomInfo> roomInfos = roomInfoMapper.selectList(roomQueryWrapper);

            List<RoomItemVo> roomItemVos = new ArrayList<>();
            for (RoomInfo roomInfo : roomInfos) {
                RoomItemVo roomItemVo = new RoomItemVo();
                BeanUtils.copyProperties(roomInfo, roomItemVo);

                // 设置公寓信息
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
     * 根据公寓名称查询所有房间号
     * 
     * @return
     */
    @Bean
    @Description("根据公寓名称查询所有房间号及相关信息，包含房间图片的完整URL地址")
    public Function<RoomsByApartmentName, List<RoomItemVo>> roomsByApartmentNameOperation() {
        return request -> {
            // 先根据公寓名称查询公寓信息
            LambdaQueryWrapper<ApartmentInfo> apartmentQueryWrapper = new LambdaQueryWrapper<>();
            apartmentQueryWrapper.eq(ApartmentInfo::getName, request.apartmentName);
            apartmentQueryWrapper.eq(ApartmentInfo::getIsDeleted, 0);
            ApartmentInfo apartmentInfo = apartmentInfoMapper.selectOne(apartmentQueryWrapper);

            if (apartmentInfo == null) {
                return new ArrayList<>();
            }

            // 根据公寓ID查询所有房间
            LambdaQueryWrapper<RoomInfo> roomQueryWrapper = new LambdaQueryWrapper<>();
            roomQueryWrapper.eq(RoomInfo::getApartmentId, apartmentInfo.getId());
            roomQueryWrapper.eq(RoomInfo::getIsDeleted, 0);
            roomQueryWrapper.eq(RoomInfo::getIsRelease, 1);
            List<RoomInfo> roomInfos = roomInfoMapper.selectList(roomQueryWrapper);

            // 构建房间列表VO
            List<RoomItemVo> roomItemVos = new ArrayList<>();
            for (RoomInfo roomInfo : roomInfos) {
                RoomItemVo roomItemVo = new RoomItemVo();
                BeanUtils.copyProperties(roomInfo, roomItemVo);

                // 设置公寓信息
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
    public Function<ApartmentInfoOperation, List<Long>> apartmentInfoOperation() {
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

    /**
     * 根据房间ID查询房间信息
     * 
     * @return
     */
    @Bean
    @Description("根据房间ID查询房间信息，包含房间图片的完整URL地址")
    public Function<RoomInfoById, RoomItemVo> roomInfoOperation() {
        return request -> {
            RoomInfo roomInfo = roomInfoMapper.selectById(request.roomId);
            if (roomInfo == null) {
                return null;
            }

            // 查询公寓信息
            ApartmentInfo apartmentInfo = apartmentInfoMapper.selectById(roomInfo.getApartmentId());
            if (apartmentInfo == null) {
                return null;
            }

            // 构建房间VO
            RoomItemVo roomItemVo = new RoomItemVo();
            BeanUtils.copyProperties(roomInfo, roomItemVo);

            // 设置公寓信息
            roomItemVo.setApartmentInfo(apartmentInfo);

            // 查询房间图片
            List<GraphVo> graphVos = graphInfoMapper.selectListByItemTypeAndId(ItemType.ROOM, roomInfo.getId());
            roomItemVo.setGraphVoList(graphVos);

            // 查询房间标签
            List<LabelInfo> labelInfos = labelInfoMapper.selectListByRoomId(roomInfo.getId());
            roomItemVo.setLabelInfoList(labelInfos);

            return roomItemVo;
        };
    }

    /**
     * 根据房间ID查询房间详细信息
     *
     * @return
     */
    @Bean
    @Description("根据房间ID查询房间详细信息，包含房间图片的完整URL地址")
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
     * 
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
     * 
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
     * 
     * @return
     */
    @Bean
    @Description("根据房间ID查询配套信息")
    public Function<FacilityByRoomId, List<FacilityInfo>> facilityByRoomIdOperation() {
        return request -> facilityInfoMapper.selectListByRoomId(request.roomId());
    }

    /**
     * 根据租金范围查询房间
     * 
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
     * 
     * @return
     */
    @Bean
    @Description("根据付款方式查询房间")
    public Function<RoomByPaymentType, List<RoomInfo>> roomByPaymentTypeOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.inSql(RoomInfo::getId,
                    "SELECT room_id FROM room_payment_type WHERE payment_type_id = " + request.paymentTypeId()
                            + " AND is_deleted = 0");
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据租期查询房间
     * 
     * @return
     */
    @Bean
    @Description("根据租期查询房间")
    public Function<RoomByLeaseTerm, List<RoomInfo>> roomByLeaseTermOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.inSql(RoomInfo::getId,
                    "SELECT room_id FROM room_lease_term WHERE lease_term_id = " + request.leaseTermId()
                            + " AND is_deleted = 0");
            return roomInfoMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据公寓ID查询可租房源
     * 
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
     * 
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
     * 
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
     * 
     * @return
     */
    @Bean
    @Description("根据公寓ID查询公寓详细信息")
    public Function<ApartmentDetailInfo, ApartmentInfo> apartmentDetailInfoOperation() {
        return request -> {
            return apartmentInfoMapper.selectById(request.apartmentId());
        };
    }

    /**
     * 获取所有付款方式列表
     * 
     * @return 所有付款方式
     */
    @Bean
    @Description("获取所有付款方式列表，包括押一付一、押一付三等")
    public Function<Void, List<PaymentType>> allPaymentTypesOperation() {
        return request -> {
            LambdaQueryWrapper<PaymentType> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(PaymentType::getIsDeleted, 0);
            return paymentTypeMapper.selectList(queryWrapper);
        };
    }

    /**
     * 获取所有租期列表
     * 
     * @return 所有租期
     */
    @Bean
    @Description("获取所有租期列表，包括1个月、3个月、6个月、1年等")
    public Function<Void, List<LeaseTerm>> allLeaseTermsOperation() {
        return request -> {
            LambdaQueryWrapper<LeaseTerm> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(LeaseTerm::getIsDeleted, 0);
            return leaseTermMapper.selectList(queryWrapper);
        };
    }

    /**
     * 根据付款方式名称查询房间
     * 
     * @return 符合条件的房间列表
     */
    @Bean
    @Description("根据付款方式名称（如押一付一、押一付三、押二付一等）查询房间")
    public Function<RoomByPaymentTypeName, List<RoomItemVo>> roomByPaymentTypeNameOperation() {
        return request -> {
            // 先根据付款方式名称查询付款方式ID
            LambdaQueryWrapper<PaymentType> paymentTypeQueryWrapper = new LambdaQueryWrapper<>();
            paymentTypeQueryWrapper.like(PaymentType::getName, request.paymentTypeName());
            paymentTypeQueryWrapper.eq(PaymentType::getIsDeleted, 0);
            List<PaymentType> paymentTypes = paymentTypeMapper.selectList(paymentTypeQueryWrapper);

            if (paymentTypes.isEmpty()) {
                return new ArrayList<>();
            }

            // 获取付款方式ID列表
            List<Long> paymentTypeIds = paymentTypes.stream().map(PaymentType::getId).toList();

            // 查询关联的房间ID
            LambdaQueryWrapper<RoomPaymentType> roomPaymentTypeQueryWrapper = new LambdaQueryWrapper<>();
            roomPaymentTypeQueryWrapper.in(RoomPaymentType::getPaymentTypeId, paymentTypeIds);
            roomPaymentTypeQueryWrapper.eq(RoomPaymentType::getIsDeleted, 0);
            List<RoomPaymentType> roomPaymentTypes = roomPaymentTypeMapper.selectList(roomPaymentTypeQueryWrapper);

            if (roomPaymentTypes.isEmpty()) {
                return new ArrayList<>();
            }

            List<Long> roomIds = roomPaymentTypes.stream().map(RoomPaymentType::getRoomId).distinct().toList();

            // 查询房间信息
            return buildRoomItemVoList(roomIds);
        };
    }

    /**
     * 根据租期名称查询房间
     * 
     * @return 符合条件的房间列表
     */
    @Bean
    @Description("根据租期名称（如1个月、3个月、6个月、1年、短租、长租等）查询房间")
    public Function<RoomByLeaseTermName, List<RoomItemVo>> roomByLeaseTermNameOperation() {
        return request -> {
            // 先根据租期名称查询租期ID
            LambdaQueryWrapper<LeaseTerm> leaseTermQueryWrapper = new LambdaQueryWrapper<>();
            leaseTermQueryWrapper.like(LeaseTerm::getMonthCount, request.leaseTermName())
                    .or()
                    .like(LeaseTerm::getUnit, request.leaseTermName());
            leaseTermQueryWrapper.eq(LeaseTerm::getIsDeleted, 0);
            List<LeaseTerm> leaseTerms = leaseTermMapper.selectList(leaseTermQueryWrapper);

            if (leaseTerms.isEmpty()) {
                return new ArrayList<>();
            }

            // 获取租期ID列表
            List<Long> leaseTermIds = leaseTerms.stream().map(LeaseTerm::getId).toList();

            // 查询关联的房间ID
            LambdaQueryWrapper<RoomLeaseTerm> roomLeaseTermQueryWrapper = new LambdaQueryWrapper<>();
            roomLeaseTermQueryWrapper.in(RoomLeaseTerm::getLeaseTermId, leaseTermIds);
            roomLeaseTermQueryWrapper.eq(RoomLeaseTerm::getIsDeleted, 0);
            List<RoomLeaseTerm> roomLeaseTerms = roomLeaseTermMapper.selectList(roomLeaseTermQueryWrapper);

            if (roomLeaseTerms.isEmpty()) {
                return new ArrayList<>();
            }

            List<Long> roomIds = roomLeaseTerms.stream().map(RoomLeaseTerm::getRoomId).distinct().toList();

            // 查询房间信息
            return buildRoomItemVoList(roomIds);
        };
    }

    /**
     * 根据面积范围查询房间
     * 
     * @return 符合条件的房间列表
     */
    @Bean
    @Description("根据面积范围（平方米）查询房间，如查询20-30平米的房间")
    public Function<RoomByAreaRange, List<RoomItemVo>> roomByAreaRangeOperation() {
        return request -> {
            // 先查询符合面积范围的属性值
            LambdaQueryWrapper<AttrKey> attrKeyQueryWrapper = new LambdaQueryWrapper<>();
            attrKeyQueryWrapper.like(AttrKey::getName, "面积");
            List<AttrKey> attrKeys = attrKeyMapper.selectList(attrKeyQueryWrapper);

            if (attrKeys.isEmpty()) {
                return new ArrayList<>();
            }

            // 获取面积相关的属性值
            List<Long> attrKeyIds = attrKeys.stream().map(AttrKey::getId).toList();
            LambdaQueryWrapper<AttrValue> attrValueQueryWrapper = new LambdaQueryWrapper<>();
            attrValueQueryWrapper.in(AttrValue::getAttrKeyId, attrKeyIds);
            List<AttrValue> attrValues = attrValueMapper.selectList(attrValueQueryWrapper);

            // 过滤符合面积范围的属性值
            List<Long> matchedAttrValueIds = new ArrayList<>();
            for (AttrValue attrValue : attrValues) {
                try {
                    // 尝试从属性值名称中提取数字（如"25平米"提取25）
                    String name = attrValue.getName().replaceAll("[^0-9.]", "");
                    if (!name.isEmpty()) {
                        BigDecimal area = new BigDecimal(name);
                        boolean minMatch = request.minArea() == null || area.compareTo(request.minArea()) >= 0;
                        boolean maxMatch = request.maxArea() == null || area.compareTo(request.maxArea()) <= 0;
                        if (minMatch && maxMatch) {
                            matchedAttrValueIds.add(attrValue.getId());
                        }
                    }
                } catch (NumberFormatException e) {
                    // 忽略无法解析的属性值
                }
            }

            if (matchedAttrValueIds.isEmpty()) {
                return new ArrayList<>();
            }

            // 查询关联的房间ID
            LambdaQueryWrapper<RoomAttrValue> roomAttrValueQueryWrapper = new LambdaQueryWrapper<>();
            roomAttrValueQueryWrapper.in(RoomAttrValue::getAttrValueId, matchedAttrValueIds);
            List<RoomAttrValue> roomAttrValues = roomAttrValueMapper.selectList(roomAttrValueQueryWrapper);

            if (roomAttrValues.isEmpty()) {
                return new ArrayList<>();
            }

            List<Long> roomIds = roomAttrValues.stream().map(RoomAttrValue::getRoomId).distinct().toList();

            return buildRoomItemVoList(roomIds);
        };
    }

    /**
     * 获取所有可租房源
     * 
     * @return 所有可租房源列表
     */
    @Bean
    @Description("获取所有可租房源，返回当前可以租赁的房间列表")
    public Function<Void, List<RoomItemVo>> allAvailableRoomsOperation() {
        return request -> {
            LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(RoomInfo::getIsDeleted, 0);
            queryWrapper.eq(RoomInfo::getIsRelease, 1);
            // 排除已出租的房间
            queryWrapper.notInSql(RoomInfo::getId,
                    "SELECT room_id FROM lease_agreement WHERE is_deleted = 0 AND status IN (2, 5)");

            List<RoomInfo> roomInfos = roomInfoMapper.selectList(queryWrapper);
            List<Long> roomIds = roomInfos.stream().map(RoomInfo::getId).toList();

            return buildRoomItemVoList(roomIds);
        };
    }

    /**
     * 多条件组合查询房间
     * 
     * @return 符合条件的房间列表
     */
    @Bean
    @Description("根据多条件组合查询房间，支持位置（省份、城市、区域）、租金范围、付款方式、租期等条件的组合查询")
    public Function<RoomByMultiCondition, List<RoomItemVo>> roomByMultiConditionOperation() {
        return request -> {
            // 1. 根据位置条件筛选公寓ID
            List<Long> apartmentIds = null;
            if ((request.provinceName() != null && !request.provinceName().isEmpty()) ||
                    (request.cityName() != null && !request.cityName().isEmpty()) ||
                    (request.districtName() != null && !request.districtName().isEmpty())) {

                LambdaQueryWrapper<ApartmentInfo> apartmentQueryWrapper = new LambdaQueryWrapper<>();
                if (request.provinceName() != null && !request.provinceName().isEmpty()) {
                    apartmentQueryWrapper.like(ApartmentInfo::getProvinceName, request.provinceName());
                }
                if (request.cityName() != null && !request.cityName().isEmpty()) {
                    apartmentQueryWrapper.like(ApartmentInfo::getCityName, request.cityName());
                }
                if (request.districtName() != null && !request.districtName().isEmpty()) {
                    apartmentQueryWrapper.like(ApartmentInfo::getDistrictName, request.districtName());
                }
                apartmentQueryWrapper.eq(ApartmentInfo::getIsDeleted, 0);

                List<ApartmentInfo> apartments = apartmentInfoMapper.selectList(apartmentQueryWrapper);
                apartmentIds = apartments.stream().map(ApartmentInfo::getId).toList();

                if (apartmentIds.isEmpty()) {
                    return new ArrayList<>();
                }
            }

            // 2. 根据付款方式筛选房间ID
            List<Long> paymentRoomIds = null;
            if (request.paymentTypeName() != null && !request.paymentTypeName().isEmpty()) {
                LambdaQueryWrapper<PaymentType> paymentTypeQueryWrapper = new LambdaQueryWrapper<>();
                paymentTypeQueryWrapper.like(PaymentType::getName, request.paymentTypeName());
                paymentTypeQueryWrapper.eq(PaymentType::getIsDeleted, 0);
                List<PaymentType> paymentTypes = paymentTypeMapper.selectList(paymentTypeQueryWrapper);

                if (!paymentTypes.isEmpty()) {
                    List<Long> paymentTypeIds = paymentTypes.stream().map(PaymentType::getId).toList();
                    LambdaQueryWrapper<RoomPaymentType> roomPaymentTypeQueryWrapper = new LambdaQueryWrapper<>();
                    roomPaymentTypeQueryWrapper.in(RoomPaymentType::getPaymentTypeId, paymentTypeIds);
                    roomPaymentTypeQueryWrapper.eq(RoomPaymentType::getIsDeleted, 0);
                    List<RoomPaymentType> roomPaymentTypes = roomPaymentTypeMapper
                            .selectList(roomPaymentTypeQueryWrapper);
                    paymentRoomIds = roomPaymentTypes.stream().map(RoomPaymentType::getRoomId).distinct().toList();

                    if (paymentRoomIds.isEmpty()) {
                        return new ArrayList<>();
                    }
                }
            }

            // 3. 根据租期筛选房间ID
            List<Long> leaseTermRoomIds = null;
            if (request.leaseTermName() != null && !request.leaseTermName().isEmpty()) {
                LambdaQueryWrapper<LeaseTerm> leaseTermQueryWrapper = new LambdaQueryWrapper<>();
                leaseTermQueryWrapper.like(LeaseTerm::getMonthCount, request.leaseTermName())
                        .or()
                        .like(LeaseTerm::getUnit, request.leaseTermName());
                leaseTermQueryWrapper.eq(LeaseTerm::getIsDeleted, 0);
                List<LeaseTerm> leaseTerms = leaseTermMapper.selectList(leaseTermQueryWrapper);

                if (!leaseTerms.isEmpty()) {
                    List<Long> leaseTermIds = leaseTerms.stream().map(LeaseTerm::getId).toList();
                    LambdaQueryWrapper<RoomLeaseTerm> roomLeaseTermQueryWrapper = new LambdaQueryWrapper<>();
                    roomLeaseTermQueryWrapper.in(RoomLeaseTerm::getLeaseTermId, leaseTermIds);
                    roomLeaseTermQueryWrapper.eq(RoomLeaseTerm::getIsDeleted, 0);
                    List<RoomLeaseTerm> roomLeaseTerms = roomLeaseTermMapper.selectList(roomLeaseTermQueryWrapper);
                    leaseTermRoomIds = roomLeaseTerms.stream().map(RoomLeaseTerm::getRoomId).distinct().toList();

                    if (leaseTermRoomIds.isEmpty()) {
                        return new ArrayList<>();
                    }
                }
            }

            // 4. 构建房间查询条件
            LambdaQueryWrapper<RoomInfo> roomQueryWrapper = new LambdaQueryWrapper<>();
            roomQueryWrapper.eq(RoomInfo::getIsDeleted, 0);
            roomQueryWrapper.eq(RoomInfo::getIsRelease, 1);

            // 位置条件
            if (apartmentIds != null) {
                roomQueryWrapper.in(RoomInfo::getApartmentId, apartmentIds);
            }

            // 租金条件
            if (request.minRent() != null) {
                roomQueryWrapper.ge(RoomInfo::getRent, request.minRent());
            }
            if (request.maxRent() != null) {
                roomQueryWrapper.le(RoomInfo::getRent, request.maxRent());
            }

            // 付款方式条件
            if (paymentRoomIds != null) {
                roomQueryWrapper.in(RoomInfo::getId, paymentRoomIds);
            }

            // 租期条件
            if (leaseTermRoomIds != null) {
                roomQueryWrapper.in(RoomInfo::getId, leaseTermRoomIds);
            }

            List<RoomInfo> roomInfos = roomInfoMapper.selectList(roomQueryWrapper);
            List<Long> roomIds = roomInfos.stream().map(RoomInfo::getId).toList();

            return buildRoomItemVoList(roomIds);
        };
    }

    /**
     * 构建房间列表VO
     * 
     * @param roomIds 房间ID列表
     * @return 房间列表VO
     */
    private List<RoomItemVo> buildRoomItemVoList(List<Long> roomIds) {
        if (roomIds == null || roomIds.isEmpty()) {
            return new ArrayList<>();
        }

        LambdaQueryWrapper<RoomInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.in(RoomInfo::getId, roomIds);
        queryWrapper.eq(RoomInfo::getIsDeleted, 0);
        queryWrapper.eq(RoomInfo::getIsRelease, 1);
        List<RoomInfo> roomInfos = roomInfoMapper.selectList(queryWrapper);

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
    }
}