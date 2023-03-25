package com.maple.bus.service;

import com.maple.bus.entity.Repair;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IRepairService extends IService<Repair> {

    /**
     * 根据业维记录id删除业维记录
     * @param id    业维记录id
     */
    void deleteRepairById(Integer id);
}
