package com.maple.bus.service.impl;

import com.maple.bus.entity.Maintain;
import com.maple.bus.mapper.MaintainMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IMaintainService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.Collection;

/**
 * <p>
 * InnoDB free: 9216 kB 服务实现类
 * </p>
 *
 * @author wdf
 */
@Service
@Transactional
public class MaintainServiceImpl extends ServiceImpl<MaintainMapper, Maintain> implements IMaintainService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Maintain entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Maintain entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Maintain getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    @Override
    public void deleteMaintainById(Integer id) {
        this.removeById(id);
    }

    /**
     * 根据业维人员id删除业维人员
     * @param id    业维人员id
     */


}
