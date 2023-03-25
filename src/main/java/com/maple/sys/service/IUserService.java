package com.maple.sys.service;

import com.maple.sys.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * InnoDB free: 9216 kB; (`deptid`) REFER `BaseStationMis/sys_dept`(`id`) ON UPDATE CASC 服务类
 * </p>
 *
 * @author wdf
 * @since 2019-11-21
 */
public interface IUserService extends IService<User> {

    /**
     * 保存用户和角色的关系
     * @param uid 用户的ID
     * @param ids 用户拥有的角色的ID的数组
     */
    void saveUserRole(Integer uid, Integer[] ids);

}
