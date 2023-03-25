package com.maple.bus.service.impl;

import com.maple.bus.entity.Bsonline;
import com.maple.bus.mapper.BsonlineMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IBsonlineService;
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
public class BsonlineServiceImpl extends ServiceImpl<BsonlineMapper, Bsonline> implements IBsonlineService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Bsonline entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Bsonline entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Bsonline getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeByIds(Collection<? extends Serializable> idList) {
        return super.removeByIds(idList);
    }

    /**
     * 根据物料发放id删除物料发放
     * @param id    物料发放id
     */
    @Override
    public void deleteBsonlineById(Integer id) {
        //根据物料发放id删除物料管理
        //materialsMapper.deleteSaleByBsonlineId(id);
        //根据物料发放id删除物料管理退货
        //materialsMapper.deleteSaleBackByBsonlineId(id);
        this.removeById(id);
    }
}
