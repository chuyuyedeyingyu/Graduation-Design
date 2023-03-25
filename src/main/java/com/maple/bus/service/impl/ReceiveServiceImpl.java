package com.maple.bus.service.impl;

import com.maple.bus.entity.Receive;
import com.maple.bus.mapper.ReceiveMapper;
import com.maple.bus.mapper.MaterialsMapper;
import com.maple.bus.service.IReceiveService;
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
public class ReceiveServiceImpl extends ServiceImpl<ReceiveMapper, Receive> implements IReceiveService {

    @Autowired
    private MaterialsMapper materialsMapper;

    @Override
    public boolean save(Receive entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(Receive entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
    @Override
    public Receive getById(Serializable id) {
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
    public void deleteReceiveById(Integer id) {
        //根据物料发放id删除物料管理
        //materialsMapper.deleteSaleByReceiveId(id);
        //根据物料发放id删除物料管理退货
        //materialsMapper.deleteSaleBackByReceiveId(id);
        this.removeById(id);
    }
}
