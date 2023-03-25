package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Return;
import com.maple.bus.service.IReturnService;
import com.maple.bus.vo.ReturnVo;
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
@RequestMapping("/return")
public class ReturnController {

    @Autowired
    private IReturnService returnService;

    /**
     * 查询所有的物料退还记录
     * @param returnVo
     * @return
     */
    @RequestMapping("loadAllReturn")
    public DataGridView loadAllReturn(ReturnVo returnVo){
        //1.声明一个分页page对象
        IPage<Return> page = new Page(returnVo.getPage(),returnVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Return> queryWrapper = new QueryWrapper();
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getCompany()),"company",returnVo.getCompany());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getName()),"name",returnVo.getName());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getPhone()),"phone",returnVo.getPhone());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getBsname()),"bsname",returnVo.getBsname());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getMaterial1()),"material1",returnVo.getMaterial1());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getQuantity1()),"quantity1",returnVo.getQuantity1());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getMaterial2()),"material2",returnVo.getMaterial2());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getQuantity2()),"quantity2",returnVo.getQuantity2());
        queryWrapper.like(StringUtils.isNotBlank(returnVo.getTime()),"time",returnVo.getTime());
        returnService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个物料退还记录
     * @param returnVo
     * @return
     */
    @RequestMapping("addReturn")
    public ResultObj addReturn(ReturnVo returnVo){
        try {
            returnService.save(returnVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个物料退还记录
     * @param returnVo
     * @return
     */
    @RequestMapping("updateReturn")
    public ResultObj updateReturn(ReturnVo returnVo){
        try {
            returnService.updateById(returnVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


    /**
     * 删除一个物料退还记录
     * @param id
     * @return
     */
    @RequestMapping("deleteReturn")
    public ResultObj deleteReturn(Integer id){
        try {
            returnService.deleteReturnById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有可用的物料退还记录
     * @return
     */
    @RequestMapping("loadAllReturnForSelect")
    public DataGridView loadAllReturnForSelect(){
        QueryWrapper<Return> queryWrapper = new QueryWrapper<Return>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Return> list = returnService.list(queryWrapper);
        return new DataGridView(list);
    }


}

