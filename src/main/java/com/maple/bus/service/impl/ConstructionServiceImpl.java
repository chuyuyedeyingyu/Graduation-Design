package com.maple.bus.service.impl;

import com.maple.bus.entity.Construction;
import com.maple.bus.mapper.ConstructionMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IConstructionService;
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
public class ConstructionServiceImpl extends ServiceImpl<ConstructionMapper, Construction> implements IConstructionService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Construction entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Construction entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Construction getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    @Override
    public void deleteConstructionById(Integer id) {
        this.removeById(id);
    }

    /**
     * 根据施工方id删除施工方
     * @param id    施工方id
     */
    /*
    @Override
    public void deleteConstructionById(Integer id) {
        //根据施工方id删除物料管理
        materialsMapper.deleteSaleByConstructionId(id);
        //根据施工方id删除物料管理退货
        materialsMapper.deleteSaleBackByConstructionId(id);
        this.removeById(id);
    }
    */

}
