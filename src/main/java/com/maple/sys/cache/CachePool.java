package com.maple.sys.cache;

import com.maple.bus.entity.Operator;
import com.maple.bus.entity.Materials;
import com.maple.bus.entity.Provider;
import com.maple.bus.mapper.OperatorMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.mapper.ProviderMapper;
import com.maple.sys.common.SpringUtil;
import com.maple.sys.entity.User;
import com.maple.sys.mapper.UserMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: wdf
 * @Date: 2019/12/20 18:05
 */
public class CachePool {

    /**
     * 所有的缓存数据放到这个CACHE_CONTAINER  类似于redis
     */
    public static volatile Map<String,Object> CACHE_CONTAINER = new HashMap<>();

    /**
     * 根据KEY删除缓存
     * @param key   键
     */
    public static void removeCacheByKey(String key){
        if (CACHE_CONTAINER.containsKey(key)){
            CACHE_CONTAINER.remove(key);
        }
    }

    /**
     * 清空所有缓存
     */
    public static void removeAll(){
        CACHE_CONTAINER.clear();
    }

    /**
     * 同步缓存
     */
    public static void syncData(){
        //同步部门数据
        /*
        DeptMapper deptMapper = SpringUtil.getBean(DeptMapper.class);
        List<Dept> deptList = deptMapper.selectList(null);
        for (Dept dept : deptList) {
            CACHE_CONTAINER.put("dept:"+dept.getId(),dept);
        }
        */

        //同步用户数据
        UserMapper userMapper = SpringUtil.getBean(UserMapper.class);
        List<User> userList = userMapper.selectList(null);
        for (User user : userList) {
            CACHE_CONTAINER.put("user:"+user.getId(),user);
        }

        //同步运营商数据
        OperatorMapper operatorMapper = SpringUtil.getBean(OperatorMapper.class);
        List<Operator> operatorList = operatorMapper.selectList(null);
        for (Operator operator : operatorList) {
            CACHE_CONTAINER.put("operator:"+operator.getId(),operator);
        }

        //同步供应商数据
        ProviderMapper providerMapper = SpringUtil.getBean(ProviderMapper.class);
        List<Provider> providerList = providerMapper.selectList(null);
        for (Provider provider : providerList) {
            CACHE_CONTAINER.put("provider:"+provider.getId(),provider);
        }

        //同步物料数据
        MaterialsMapper materialsMapper = SpringUtil.getBean(MaterialsMapper.class);
        List<Materials> materialsList = materialsMapper.selectList(null);
        for (Materials materials : materialsList) {
            CACHE_CONTAINER.put("materials:"+materials.getId(),materials);
        }

    }


}
