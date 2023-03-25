package com.maple.bus.service;

import com.maple.bus.entity.Bsonline;
import com.maple.bus.entity.Provider;
import com.baomidou.mybatisplus.extension.service.IService;
/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IBsonlineService extends IService<Bsonline> {

    /**
     * 根据在网基站id删除在网基站
     * @param id    在网基站id
     */
    void deleteBsonlineById(Integer id);
}
