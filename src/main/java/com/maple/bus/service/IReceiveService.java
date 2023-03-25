package com.maple.bus.service;

import com.maple.bus.entity.Receive;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IReceiveService extends IService<Receive> {

    /**
     * 根据物料发放ID删除物料发放记录
     * @param id
     */
    void deleteReceiveById(Integer id);
}
