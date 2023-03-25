package com.maple.bus.service;

import com.maple.bus.entity.Maintain;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IMaintainService extends IService<Maintain> {

    /**
     * 根据业维人员id删除业维人员
     * @param id    业维人员id
     */
    void deleteMaintainById(Integer id);
}
