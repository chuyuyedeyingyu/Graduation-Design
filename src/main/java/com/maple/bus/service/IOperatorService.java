package com.maple.bus.service;

import com.maple.bus.entity.Operator;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 * @author wdf
 */
public interface IOperatorService extends IService<Operator> {

    /**
     * 根据运营商id删除运营商
     * @param id    运营商id
     */
    void deleteOperatorById(Integer id);
}
