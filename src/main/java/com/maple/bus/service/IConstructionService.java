package com.maple.bus.service;

import com.maple.bus.entity.Construction;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IConstructionService extends IService<Construction> {

    /**
     * 根据施工方id删除施工方
     * @param id    施工方id
     */
    void deleteConstructionById(Integer id);
}
