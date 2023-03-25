package com.maple.bus.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.maple.bus.entity.Materials;

import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB; (`providerid`) REFER `BaseStationMis/bus_provider`(`id`) 服务类
 * </p>
 *
 * @author wdf
 */
public interface IMaterialsService extends IService<Materials> {

    /**
     * 根据物料id删除物料
     * @param id
     */
    void deleteMaterialsById(Integer id);

    /**
     * 加载所有的库存预警物料
     * @return
     */
    List<Materials> loadAllWarning();
}
