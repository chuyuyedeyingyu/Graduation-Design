package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Receive;
import com.maple.bus.service.IReceiveService;
import com.maple.bus.vo.ReceiveVo;
import com.maple.sys.common.Constast;
import com.maple.sys.common.DataGridView;
import com.maple.sys.common.ResultObj;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB 前端控制器
 * </p>
 *
 * @author wdf
 */
@RestController
@RequestMapping("/receive")
public class ReceiveController {

    @Autowired
    private IReceiveService receiveService;

    /**
     * 查询所有的物料发放记录
     * @param receiveVo
     * @return
     */
    @RequestMapping("loadAllReceive")
    public DataGridView loadAllReceive(ReceiveVo receiveVo){
        //1.声明一个分页page对象
        IPage<Receive> page = new Page(receiveVo.getPage(),receiveVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Receive> queryWrapper = new QueryWrapper();
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getCompany()),"company",receiveVo.getCompany());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getName()),"name",receiveVo.getName());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getPhone()),"phone",receiveVo.getPhone());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getBsname()),"bsname",receiveVo.getBsname());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getMaterial1()),"material1",receiveVo.getMaterial1());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getQuantity1()),"quantity1",receiveVo.getQuantity1());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getMaterial2()),"material2",receiveVo.getMaterial2());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getQuantity2()),"quantity2",receiveVo.getQuantity2());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getMaterial3()),"material3",receiveVo.getMaterial3());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getQuantity3()),"quantity3",receiveVo.getQuantity3());
        queryWrapper.like(StringUtils.isNotBlank(receiveVo.getTime()),"time",receiveVo.getTime());
        receiveService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个物料发放记录
     * @param receiveVo
     * @return
     */
    @RequestMapping("addReceive")
    public ResultObj addReceive(ReceiveVo receiveVo){
        try {
            receiveService.save(receiveVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个物料发放记录
     * @param receiveVo
     * @return
     */
    @RequestMapping("updateReceive")
    public ResultObj updateReceive(ReceiveVo receiveVo){
        try {
            receiveService.updateById(receiveVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


    /**
     * 删除一个物料发放记录
     * @param id
     * @return
     */
    @RequestMapping("deleteReceive")
    public ResultObj deleteReceive(Integer id){
        try {
            receiveService.deleteReceiveById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有可用的物料发放记录
     * @return
     */
    @RequestMapping("loadAllReceiveForSelect")
    public DataGridView loadAllReceiveForSelect(){
        QueryWrapper<Receive> queryWrapper = new QueryWrapper<Receive>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Receive> list = receiveService.list(queryWrapper);
        return new DataGridView(list);
    }


}

