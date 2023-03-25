package com.maple.bus.service.impl;

import com.maple.bus.entity.Operator;
import com.maple.bus.mapper.OperatorMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IOperatorService;
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
public class OperatorServiceImpl extends ServiceImpl<OperatorMapper, Operator> implements IOperatorService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Operator entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Operator entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Operator getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    /**
     * 根据运营商id删除运营商
     * @param id    运营商id
     */
    @Override
    public void deleteOperatorById(Integer id) {
        //根据运营商id删除物料管理
        //materialsMapper.deleteSaleByOperatorId(id);
        //根据运营商id删除物料管理退货
        //materialsMapper.deleteSaleBackByOperatorId(id);
        this.removeById(id);
    }
}
