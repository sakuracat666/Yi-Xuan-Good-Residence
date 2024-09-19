package com.atguigu.lease.web.app.service.impl;

import com.atguigu.lease.model.entity.ApartmentInfo;
import com.atguigu.lease.model.entity.LabelInfo;
import com.atguigu.lease.model.enums.ItemType;
import com.atguigu.lease.web.app.mapper.ApartmentInfoMapper;
import com.atguigu.lease.web.app.mapper.GraphInfoMapper;
import com.atguigu.lease.web.app.mapper.LabelInfoMapper;
import com.atguigu.lease.web.app.mapper.RoomInfoMapper;
import com.atguigu.lease.web.app.service.ApartmentInfoService;
import com.atguigu.lease.web.app.vo.apartment.ApartmentItemVo;
import com.atguigu.lease.web.app.vo.graph.GraphVo;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author liubo
 * @description 针对表【apartment_info(公寓信息表)】的数据库操作Service实现
 * @createDate 2023-07-26 11:12:39
 */
@Service
public class ApartmentInfoServiceImpl extends ServiceImpl<ApartmentInfoMapper, ApartmentInfo>
        implements ApartmentInfoService {
    @Autowired
    private ApartmentInfoMapper apartmentInfoMapper;
    @Autowired
    private LabelInfoMapper labelInfoMapper;
    @Autowired
    private GraphInfoMapper graphInfoMapper;
    @Autowired
    private RoomInfoMapper roomInfoMapper;

    /**
     * 根据ID选择ApartmentItemVo对象
     * 此方法用于根据公寓ID获取公寓的详细信息，标签信息和图形信息
     * 它通过从不同表中查询相关信息，并将其封装到ApartmentItemVo对象中返回
     *
     * @param id 公寓ID，用于查询特定公寓的信息
     * @return 返回封装了公寓详细信息、标签信息和图形信息的ApartmentItemVo对象
     */
    @Override
    public ApartmentItemVo selectApartmentItemVoById(Long id) {
        // 根据ID查询公寓基本信息
        ApartmentInfo apartmentInfo = apartmentInfoMapper.selectById(id);

        // 根据公寓ID查询标签信息列表
        List<LabelInfo> labelInfoList = labelInfoMapper.selectListByApartmentId(id);

        // 根据公寓类型和ID查询图形信息列表
        List<GraphVo> graphVoList = graphInfoMapper.selectListByItemTypeAndId(ItemType.APARTMENT, id);

        // 查询公寓最小租金信息
        BigDecimal minRent = roomInfoMapper.selectMinRentByApartmentId(id);

        // 创建ApartmentItemVo对象，用于封装查询结果
        ApartmentItemVo apartmentItemVo = new ApartmentItemVo();
        // 将公寓基本信息复制到ApartmentItemVo对象中
        BeanUtils.copyProperties(apartmentInfo, apartmentItemVo);

        // 设置图形信息列表
        apartmentItemVo.setGraphVoList(graphVoList);
        // 设置标签信息列表
        apartmentItemVo.setLabelInfoList(labelInfoList);
        // 设置最小租金信息
        apartmentItemVo.setMinRent(minRent);
        return apartmentItemVo;
    }

}




