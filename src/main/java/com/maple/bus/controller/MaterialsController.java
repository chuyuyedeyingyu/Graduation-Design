package com.maple.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.bus.entity.Materials;
import com.maple.bus.entity.Provider;
import com.maple.bus.service.IMaterialsService;
import com.maple.bus.service.IProviderService;
import com.maple.bus.vo.MaterialsVo;
import com.maple.sys.common.AppFileUtils;
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
 * InnoDB free: 9216 kB; (`providerid`) REFER `BaseStationMis/bus_provider`(`id`) 前端控制器
 * </p>
 *
 * @author wdf
 */
@RestController
@RequestMapping("/materials")
public class MaterialsController {

    @Autowired
    private IMaterialsService materialsService;

    @Autowired
    private IProviderService providerService;

    /**
     * 查询物料
     * @param materialsVo
     * @return
     */
    @RequestMapping("loadAllMaterials")
    public DataGridView loadAllMaterials(MaterialsVo materialsVo){
        IPage<Materials> page = new Page<Materials>(materialsVo.getPage(),materialsVo.getLimit());
        QueryWrapper<Materials> queryWrapper = new QueryWrapper<Materials>();
        queryWrapper.eq(materialsVo.getProviderid()!=null&&materialsVo.getProviderid()!=0,"providerid",materialsVo.getProviderid());
        queryWrapper.like(StringUtils.isNotBlank(materialsVo.getMaterialsname()),"materialsname",materialsVo.getMaterialsname());
        queryWrapper.like(StringUtils.isNotBlank(materialsVo.getProductcode()),"productcode",materialsVo.getProductcode());
        queryWrapper.like(StringUtils.isNotBlank(materialsVo.getPromitcode()),"promitcode",materialsVo.getPromitcode());
        queryWrapper.like(StringUtils.isNotBlank(materialsVo.getDescription()),"description",materialsVo.getDescription());
        queryWrapper.like(StringUtils.isNotBlank(materialsVo.getSize()),"size",materialsVo.getSize());

        queryWrapper.orderByDesc("id");
        materialsService.page(page,queryWrapper);
        List<Materials> records = page.getRecords();
        for (Materials materials : records) {
            Provider provider = providerService.getById(materials.getProviderid());
            if (null!=provider){
                materials.setProvidername(provider.getProvidername());
            }
        }
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 添加物料
     * @param materialsVo
     * @return
     */
    @RequestMapping("addMaterials")
    public ResultObj addMaterials(MaterialsVo materialsVo){
        try {
            System.out.println("====================================");
            System.out.println(materialsVo.getMaterialsimg());
            if (materialsVo.getMaterialsimg()!=null&&materialsVo.getMaterialsimg().endsWith("_temp")){
                String newName = AppFileUtils.renameFile(materialsVo.getMaterialsimg());
                materialsVo.setMaterialsimg(newName);
            }
            materialsService.save(materialsVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改物料
     * @param materialsVo
     * @return
     */
    @RequestMapping("updateMaterials")
    public ResultObj updateMaterials(MaterialsVo materialsVo){
        try {
            //物料图片不是默认图片
            if (!(materialsVo.getMaterialsimg()!=null&&materialsVo.getMaterialsimg().equals(Constast.DEFAULT_IMG_MATERIALS))){

                if (materialsVo.getMaterialsimg().endsWith("_temp")){
                    String newName = AppFileUtils.renameFile(materialsVo.getMaterialsimg());
                    materialsVo.setMaterialsimg(newName);
                    //删除原先的图片
                    String oldPath = materialsService.getById(materialsVo.getId()).getMaterialsimg();
                    AppFileUtils.removeFileByPath(oldPath);
                }
            }
            materialsService.updateById(materialsVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除物料
     * @param id 物料id
     * @return
     */
    @RequestMapping("deleteMaterials")
    public ResultObj deleteMaterials(Integer id,String materialsimg){
        try {
            //删除物料的图片
            AppFileUtils.removeFileByPath(materialsimg);
//            materialsService.removeById(id);
            materialsService.deleteMaterialsById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 加载所有未停产的物料
     * @return
     */
    @RequestMapping("loadAllMaterialsForSelect")
    public DataGridView loadAllMaterialsForSelect(){
        QueryWrapper<Materials> queryWrapper = new QueryWrapper<Materials>();
        queryWrapper.eq("available",Constast.AVAILABLE_TRUE);
        List<Materials> list = materialsService.list(queryWrapper);
        for (Materials materials : list) {
            Provider provider = providerService.getById(materials.getProviderid());
            if (null!=provider){
                materials.setProvidername(provider.getProvidername());
            }
        }
        return new DataGridView(list);
    }

    /**
     * 根据供应商ID查询物料信息
     * @param providerid    供应商ID
     * @return
     */
    @RequestMapping("loadMaterialsByProviderId")
    public DataGridView loadMaterialsByProviderId(Integer providerid){
        QueryWrapper<Materials> queryWrapper = new QueryWrapper<Materials>();
        queryWrapper.eq("available",Constast.AVAILABLE_TRUE);
        queryWrapper.eq(providerid!=null,"providerid",providerid);
        List<Materials> list = materialsService.list(queryWrapper);
        for (Materials materials : list) {
            Provider provider = providerService.getById(materials.getProviderid());
            if (null!=provider){
                materials.setProvidername(provider.getProvidername());
            }
        }
        return new DataGridView(list);
    }

    @RequestMapping("loadAllWarningMaterials")
    public DataGridView loadAllWarningMaterials(){
        List<Materials> materials = materialsService.loadAllWarning();
        return new DataGridView((long) materials.size(),materials);
    }



}

