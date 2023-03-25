package com.maple.bus.vo;

import com.maple.bus.entity.Repair;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class RepairVo extends Repair{

    /**
     * 分页参数，当前是第一页，每页10条数据
     */
    private Integer page=1;
    private Integer limit=10;

    /**
     * 批量删除业维记录，存放业维记录ID的数组
     */
    private Integer[] ids;

}
