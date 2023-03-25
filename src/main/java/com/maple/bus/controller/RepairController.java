package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Repair;
import com.maple.bus.service.IRepairService;
import com.maple.bus.vo.RepairVo;
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
@RequestMapping("/repair")
public class RepairController {

    @Autowired
    private IRepairService repairService;

    /**
     * 查询所有的业维记录
     * @param repairVo
     * @return
     */
    @RequestMapping("loadAllRepair")
    public DataGridView loadAllRepair(RepairVo repairVo){
        //1.声明一个分页page对象
        IPage<Repair> page = new Page(repairVo.getPage(),repairVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Repair> queryWrapper = new QueryWrapper();
        queryWrapper.like(StringUtils.isNotBlank(repairVo.getMaintainname()),"maintainname",repairVo.getMaintainname());
        queryWrapper.like(StringUtils.isNotBlank(repairVo.getRepairbsname()),"repairbsname",repairVo.getRepairbsname());
        queryWrapper.like(StringUtils.isNotBlank(repairVo.getCallnum()),"callnum",repairVo.getCallnum());
        queryWrapper.like(StringUtils.isNotBlank(repairVo.getReason()),"reason",repairVo.getReason());
        queryWrapper.like(StringUtils.isNotBlank(repairVo.getOrdertime()),"ordertime",repairVo.getOrdertime());
        queryWrapper.like(StringUtils.isNotBlank(repairVo.getOperation()),"operation",repairVo.getOperation());
        repairService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个业维记录
     * @param repairVo
     * @return
     */
    @RequestMapping("addRepair")
    public ResultObj addRepair(RepairVo repairVo){
        try {
            repairService.save(repairVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个业维记录
     * @param repairVo
     * @return
     */
    @RequestMapping("updateRepair")
    public ResultObj updateRepair(RepairVo repairVo){
        try {
            repairService.updateById(repairVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


    /**
     * 删除一个业维记录
     * @param id
     * @return
     */
    @RequestMapping("deleteRepair")
    public ResultObj deleteRepair(Integer id){
        try {
            repairService.deleteRepairById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有可用的业维记录
     * @return
     */
    @RequestMapping("loadAllRepairForSelect")
    public DataGridView loadAllRepairForSelect(){
        QueryWrapper<Repair> queryWrapper = new QueryWrapper<Repair>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Repair> list = repairService.list(queryWrapper);
        return new DataGridView(list);
    }


}

