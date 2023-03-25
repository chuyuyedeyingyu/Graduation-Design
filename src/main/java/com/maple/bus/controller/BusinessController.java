package com.maple.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 业务管理的路由器
 * @Author: wdf
 */
@Controller
@RequestMapping("bus")
public class BusinessController {

    /**
     * 跳转到运营商管理页面
     * @return
     */
    @RequestMapping("toOperatorManager")
    public String toOperatorManager(){
        return "business/operator/operatorManager";
    }

    /**
     * 跳转到供应商管理页面
     * @return
     */
    @RequestMapping("toProviderManager")
    public String toProviderManager(){
        return "business/provider/providerManager";
    }

    /**
     * 跳转到施工方管理页面
     * @return
     */
    @RequestMapping("toConstructionManager")
    public String toConstructionManager(){
        return "business/construction/constructionManager";
    }

    /**
     * 跳转到业维人员管理页面
     * @return
     */
    @RequestMapping("toMaintainManager")
    public String toMaintainManager(){
        return "business/maintain/maintainManager";
    }

    /**
     * 跳转到基站一览页面
     * @return
     */
    @RequestMapping("toBsonlineManager")
    public String toBsonlineManager(){
        return "business/bsonline/bsonlineManager";
    }

    /**
     * 跳转到基站维护页面
     * @return
     */
    @RequestMapping("toRepairManager")
    public String toRepairManager(){
        return "business/repair/repairManager";
    }


    /**
     * 跳转到物料管理页面
     * @return
     */
    @RequestMapping("toMaterialsManager")
    public String toMaterialsManager(){
        return "business/materials/materialsManager";
    }

    /**
     * 跳转到物料发放页面
     * @return
     */
    @RequestMapping("toReceiveManager")
    public String toReceiveManager(){
        return "business/receive/receiveManager";
    }

    /**
     * 跳转到物料退还页面
     * @return
     */
    @RequestMapping("toReturnManager")
    public String toReturnManager(){
        return "business/return/returnManager";
    }


}
