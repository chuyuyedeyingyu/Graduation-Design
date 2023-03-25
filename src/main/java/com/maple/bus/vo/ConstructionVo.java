package com.maple.bus.vo;

import com.maple.bus.entity.Construction;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class ConstructionVo extends Construction{

    /**
     * 分页参数，当前是第一页，每页10条数据
     */
    private Integer page=1;
    private Integer limit=10;

    /**
     * 批量删除运营商，存放运营商ID的数组
     */
    private Integer[] ids;

}
