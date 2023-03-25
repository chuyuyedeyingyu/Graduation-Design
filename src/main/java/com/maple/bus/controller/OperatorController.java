package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Operator;
import com.maple.bus.service.IOperatorService;
import com.maple.bus.vo.OperatorVo;
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
@RequestMapping("/operator")
public class OperatorController {

    @Autowired
    private IOperatorService operatorService;

    /**
     * 查询所有的运营商
     * @param operatorVo
     * @return
     */
    @RequestMapping("loadAllOperator")
    public DataGridView loadAllOperator(OperatorVo operatorVo){
        //1.声明一个分页page对象
        IPage<Operator> page = new Page<Operator>(operatorVo.getPage(),operatorVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Operator> queryWrapper = new QueryWrapper<Operator>();
        queryWrapper.like(StringUtils.isNotBlank(operatorVo.getOperatorname()),"operatorname",operatorVo.getOperatorname());
        queryWrapper.like(StringUtils.isNotBlank(operatorVo.getConnectionpersion()),"connectionpersion",operatorVo.getConnectionpersion());
        queryWrapper.like(StringUtils.isNotBlank(operatorVo.getPhone()),"phone",operatorVo.getPhone());
        operatorService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个运营商
     * @param operatorVo
     * @return
     */
    @RequestMapping("addOperator")
    public ResultObj addOperator(OperatorVo operatorVo){
        try {
            operatorService.save(operatorVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个运营商
     * @param operatorVo
     * @return
     */
    @RequestMapping("updateOperator")
    public ResultObj updateOperator(OperatorVo operatorVo){
        try {
            operatorService.updateById(operatorVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除一个运营商
     * @param id 运营商的ID
     * @return
     */

    @ApiOperation(value = "删除一个运营商",notes = "删除一个运营商")
    @ApiImplicitParams({@ApiImplicitParam(name = "id", value = "运营商ID",required = true,paramType = "query",dataType = "Integer")})
    @RequestMapping("deleteOperator")
    public ResultObj deleteOperator(Integer id){
        try {
            operatorService.deleteOperatorById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有运营商的下拉列表
     * @return
     */
    @RequestMapping("loadAllOperatorForSelect")
    public DataGridView loadAllOperatorForSelect(){
        QueryWrapper<Operator> queryWrapper = new QueryWrapper<Operator>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Operator> list = operatorService.list(queryWrapper);
        return new DataGridView(list);
    }

}

