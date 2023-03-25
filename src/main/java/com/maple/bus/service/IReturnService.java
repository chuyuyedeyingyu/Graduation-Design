package com.maple.bus.service;

import com.maple.bus.entity.Return;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IReturnService extends IService<Return> {

    /**
     * 根据物料退还ID删除物料退还记录
     * @param id
     */
    void deleteReturnById(Integer id);
}
