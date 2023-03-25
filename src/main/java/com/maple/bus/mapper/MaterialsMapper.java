package com.maple.bus.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.maple.bus.entity.Materials;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB; (`providerid`) REFER `BaseStationMis/bus_provider`(`id`) Mapper 接口
 * </p>
 *
 * @author wdf
 */
public interface MaterialsMapper extends BaseMapper<Materials> {

    /**
     * 根据物料id删除物料库存信息
     * @param id1
     */
    void deleteSaleByMaterialsId(@Param("materialsid") Integer id1);

    /**
     * 根据物料id删除物料管理退货信息
     * @param id1
     */
    void deleteSaleBackByMaterialsId(@Param("materialsid") Integer id1);

    /**
     * 根据物料id删除物料进货信息
     * @param id
     */
    void deleteInportByMaterialsId(@Param("materialsid") Integer id);


    /**
     * 根据物料id删除物料退货信息
     * @param id
     */
    void deleteOutportByMaterialsId(@Param("materialsid") Integer id);

    /**
     * 根据运营商id删除物料管理
     * @param id    运营商id
     */
    void deleteSaleByOperatorId(Integer id);

    /**
     * 根据运营商id删除物料管理退货信息
     * @param id    运营商id
     */
    void deleteSaleBackByOperatorId(Integer id);

    /**
     * 加载所有库存预警物料
     */
    List<Materials> loadAllWarning();
}
