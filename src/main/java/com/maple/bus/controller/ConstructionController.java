package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Construction;
import com.maple.bus.service.IConstructionService;
import com.maple.bus.vo.ConstructionVo;
import com.maple.sys.common.Constast;
import com.maple.sys.common.DataGridView;
import com.maple.sys.common.ResultObj;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
@RequestMapping("/construction")
public class ConstructionController {

    @Autowired
    private IConstructionService constructionService;

    /**
     * 查询所有的施工方
     * @param constructionVo
     * @return
     */
    @RequestMapping("loadAllConstruction")
    public DataGridView loadAllConstruction(ConstructionVo constructionVo){
        //1.声明一个分页page对象
        IPage<Construction> page = new Page<Construction>(constructionVo.getPage(),constructionVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Construction> queryWrapper = new QueryWrapper<Construction>();
        queryWrapper.like(StringUtils.isNotBlank(constructionVo.getConstructionname()),"constructionname",constructionVo.getConstructionname());
        queryWrapper.like(StringUtils.isNotBlank(constructionVo.getConnectionpersion()),"connectionpersion",constructionVo.getConnectionpersion());
        queryWrapper.like(StringUtils.isNotBlank(constructionVo.getPhone()),"phone",constructionVo.getPhone());
        constructionService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个施工方
     * @param constructionVo
     * @return
     */
    @RequestMapping("addConstruction")
    public ResultObj addConstruction(ConstructionVo constructionVo){
        try {
            constructionService.save(constructionVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个施工方
     * @param constructionVo
     * @return
     */
    @RequestMapping("updateConstruction")
    public ResultObj updateConstruction(ConstructionVo constructionVo){
        try {
            constructionService.updateById(constructionVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除一个施工方
     * @param id 施工方的ID
     * @return
     */
    @ApiOperation(value = "删除一个施工方",notes = "删除一个施工方")
    @ApiImplicitParams({@ApiImplicitParam(name = "id", value = "施工方ID",required = true,paramType = "query",dataType = "Integer")})
    @RequestMapping("deleteConstruction")
    public ResultObj deleteConstruction(Integer id){
        try {
            constructionService.deleteConstructionById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有施工方的下拉列表
     * @return
     */
    @RequestMapping("loadAllConstructionForSelect")
    public DataGridView loadAllConstructionForSelect(){
        QueryWrapper<Construction> queryWrapper = new QueryWrapper<Construction>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Construction> list = constructionService.list(queryWrapper);
        return new DataGridView(list);
    }

}

