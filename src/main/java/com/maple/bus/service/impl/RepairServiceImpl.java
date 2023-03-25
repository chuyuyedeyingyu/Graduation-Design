package com.maple.bus.service.impl;

import com.maple.bus.entity.Repair;
import com.maple.bus.mapper.RepairMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IRepairService;
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
public class RepairServiceImpl extends ServiceImpl<RepairMapper, Repair> implements IRepairService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Repair entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Repair entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Repair getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    /**
     * 根据业维记录id删除业维记录
     * @param id    业维记录id
     */
    @Override
    public void deleteRepairById(Integer id) {
        //根据业维记录id删除物料管理
        //materialsMapper.deleteSaleByRepairId(id);
        //根据业维记录id删除物料管理退货
        //materialsMapper.deleteSaleBackByRepairId(id);
        this.removeById(id);
    }
}
