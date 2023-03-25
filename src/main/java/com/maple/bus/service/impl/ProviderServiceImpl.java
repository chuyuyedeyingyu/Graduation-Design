package com.maple.bus.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.maple.bus.entity.Materials;
import com.maple.bus.entity.Provider;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.mapper.ProviderMapper;
import com.maple.bus.service.IProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB 服务实现类
 * </p>
 *
 * @author wdf
 */
@Service
@Transactional
public class ProviderServiceImpl extends ServiceImpl<ProviderMapper, Provider> implements IProviderService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Provider entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Provider entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Provider getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    /**
     * 根据供应商id删除供应商
     * @param id    供应商id
     */
    @Override
    public void deleteProviderById(Integer id) {
        //根据供应商id查询出物料id
        QueryWrapper<Materials> queryWrapper = new QueryWrapper<Materials>();
        queryWrapper.eq("providerid",id);
        List<Materials> materials = materialsMapper.selectList(queryWrapper);
        for (Materials material : materials) {
            //获取一个物料id
            Integer id1 = material.getId();
            //根据物料id删除物料管理信息
            materialsMapper.deleteSaleByMaterialsId(id1);
            //根据物料id删除物料管理退货信息
            materialsMapper.deleteSaleBackByMaterialsId(id1);
        }
        //根据供应商id删除物料退货信息
        //this.getBaseMapper().deleteOutPortByProviderId(id);
        //根据供应商id删除物料进货信息
        //this.getBaseMapper().deleteInportByProviderId(id);
        //根据供应商id删除物料
        //this.getBaseMapper().deleteMaterialsByProviderId(id);
        //删除供应商
        this.removeById(id);
    }
}
