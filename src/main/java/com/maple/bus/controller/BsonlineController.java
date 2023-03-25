package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Bsonline;
import com.maple.bus.service.IBsonlineService;
import com.maple.bus.vo.BsonlineVo;
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
@RequestMapping("/bsonline")
public class BsonlineController {

    @Autowired
    private IBsonlineService bsonlineService;

    /**
     * 查询所有的在网基站
     * @param bsonlineVo
     * @return
     */
    @RequestMapping("loadAllBsonline")
    public DataGridView loadAllBsonline(BsonlineVo bsonlineVo){
        //1.声明一个分页page对象
        IPage<Bsonline> page = new Page(bsonlineVo.getPage(),bsonlineVo.getLimit());
        //2.声明一个queryWrapper
        QueryWrapper<Bsonline> queryWrapper = new QueryWrapper();
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getBsname()),"bsname",bsonlineVo.getBsname());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getOperatorname()),"operatorname",bsonlineVo.getOperatorname());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getStandard()),"standard",bsonlineVo.getStandard());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getFrequencyrange()),"frequencyrange",bsonlineVo.getFrequencyrange());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getBsobject()),"bsobject",bsonlineVo.getBsobject());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getLongitude()),"longitude",bsonlineVo.getLongitude());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getLatitude()),"latitude",bsonlineVo.getLatitude());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getBsaddress()),"bsaddress",bsonlineVo.getBsaddress());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getBelong()),"belong",bsonlineVo.getBelong());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getSector()),"sector",bsonlineVo.getSector());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getColocation()),"colocation",bsonlineVo.getColocation());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getBbufocus()),"bbufocus",bsonlineVo.getBbufocus());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getPlanning()),"planning",bsonlineVo.getPlanning());
        queryWrapper.like(StringUtils.isNotBlank(bsonlineVo.getBsremarks()),"bsremarks",bsonlineVo.getBsremarks());
        bsonlineService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加一个在网基站
     * @param bsonlineVo
     * @return
     */
    @RequestMapping("addBsonline")
    public ResultObj addBsonline(BsonlineVo bsonlineVo){
        try {
            bsonlineService.save(bsonlineVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个在网基站
     * @param bsonlineVo
     * @return
     */
    @RequestMapping("updateBsonline")
    public ResultObj updateBsonline(BsonlineVo bsonlineVo){
        try {
            bsonlineService.updateById(bsonlineVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


    /**
     * 删除一个在网基站
     * @param id
     * @return
     */
    @RequestMapping("deleteBsonline")
    public ResultObj deleteBsonline(Integer id){
        try {
            bsonlineService.deleteBsonlineById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 加载所有在职的在网基站
     * @return
     */
    @RequestMapping("loadAllBsonlineForSelect")
    public DataGridView loadAllBsonlineForSelect(){
        QueryWrapper<Bsonline> queryWrapper = new QueryWrapper<Bsonline>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Bsonline> list = bsonlineService.list(queryWrapper);
        return new DataGridView(list);
    }


}

