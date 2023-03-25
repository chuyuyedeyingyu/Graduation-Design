package com.maple.bus.service.impl;

import com.maple.bus.entity.Return;
import com.maple.bus.mapper.ReturnMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IReturnService;
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
public class ReturnServiceImpl extends ServiceImpl<ReturnMapper, Return> implements IReturnService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Return entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Return entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Return getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    /**
     * 根据物料退还id删除物料退还
     * @param id    物料退还id
     */
    @Override
    public void deleteReturnById(Integer id) {
        //根据物料退还id删除物料管理
        //materialsMapper.deleteSaleByReturnId(id);
        //根据物料退还id删除物料管理退货
        //materialsMapper.deleteSaleBackByReturnId(id);
        this.removeById(id);
    }
}
