package com.maple.bus.mapper;

import com.maple.bus.entity.Provider;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 * InnoDB free: 9216 kB Mapper 接口
 * </p>
 *
 * @author wdf
 */
public interface ProviderMapper extends BaseMapper<Provider> {

    /**
     * 根据供应商id删除物料信息
     * @param id
     */
    void deleteMaterialsByProviderId(@Param("pid") Integer id);

    /**
     * 根据供应商id删除物料进货信息
     * @param id
     */
    void deleteInportByProviderId(@Param("pid") Integer id);

    /**
     * 根据供应商id删除物料退货信息
     * @param id
     */
    void deleteOutPortByProviderId(@Param("pid") Integer id);


}
