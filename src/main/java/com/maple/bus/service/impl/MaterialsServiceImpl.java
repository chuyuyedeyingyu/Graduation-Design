package com.maple.bus.service.impl;

import com.maple.bus.entity.Materials;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IMaterialsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB; (`providerid`) REFER `BaseStationMis/bus_provider`(`id`) 服务实现类
 * </p>
 *
 * @author wdf
 */
@Service
@Transactional
public class MaterialsServiceImpl extends ServiceImpl<MaterialsMapper, Materials> implements IMaterialsService {

    @Override
    public boolean save(Materials entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Materials entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }

    @Override
    public Materials getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public void deleteMaterialsById(Integer id) {
        //根据物料id删除物料管理信息
        //this.getBaseMapper().deleteSaleByMaterialsId(id);
        //根据物料id删除物料管理退货信息
        //this.getBaseMapper().deleteSaleBackByMaterialsId(id);
        //根据物料id删除物料进货信息
        //this.getBaseMapper().deleteInportByMaterialsId(id);
        //根据物料id删除物料退货信息
        //this.getBaseMapper().deleteOutportByMaterialsId(id);
        //删除物料信息
        this.removeById(id);
    }

    /**
     * 查询所有库存预警物料
     * @return
     */
    @Override
    public List<Materials> loadAllWarning() {
        List<Materials> materials = baseMapper.loadAllWarning();
        return materials;
    }
}
