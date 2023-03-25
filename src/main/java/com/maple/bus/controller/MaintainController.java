package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Maintain;
import com.maple.bus.service.IMaintainService;
import com.maple.bus.vo.MaintainVo;
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
@RequestMapping("/maintain")
public class MaintainController {

    @Autowired
    private IMaintainService maintainService;

    /**
     * 查询所有的业维人员
     * @param maintainVo
     * @return
     */
    @RequestMapping("loadAllMaintain")
    public DataGridView loadAllMaintain(MaintainVo maintainVo){
        //1.声明一个分页page对象
        IPage<Maintain> page = new Page(maintainVo.getPage(),maintainVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Maintain> queryWrapper = new QueryWrapper();
        queryWrapper.like(StringUtils.isNotBlank(maintainVo.getMaintainname()),"maintainname",maintainVo.getMaintainname());
        queryWrapper.like(StringUtils.isNotBlank(maintainVo.getCompany()),"company",maintainVo.getCompany());
        queryWrapper.like(StringUtils.isNotBlank(maintainVo.getTelephone()),"telephone",maintainVo.getTelephone());
        maintainService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个业维人员
     * @param maintainVo
     * @return
     */
    @RequestMapping("addMaintain")
    public ResultObj addMaintain(MaintainVo maintainVo){
        try {
            maintainService.save(maintainVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个业维人员
     * @param maintainVo
     * @return
     */
    @RequestMapping("updateMaintain")
    public ResultObj updateMaintain(MaintainVo maintainVo){
        try {
            maintainService.updateById(maintainVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


    /**
     * 删除一个业维人员
     * @param id
     * @return
     */
    @RequestMapping("deleteMaintain")
    public ResultObj deleteMaintain(Integer id){
        try {
            maintainService.deleteMaintainById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有在职的业维人员
     * @return
     */
    @RequestMapping("loadAllMaintainForSelect")
    public DataGridView loadAllMaintainForSelect(){
        QueryWrapper<Maintain> queryWrapper = new QueryWrapper<Maintain>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Maintain> list = maintainService.list(queryWrapper);
        return new DataGridView(list);
    }


}

