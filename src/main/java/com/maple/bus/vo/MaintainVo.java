package com.maple.bus.vo;

import com.maple.bus.entity.Maintain;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class MaintainVo extends Maintain{

    /**
     * 分页参数，当前是第一页，每页10条数据
     */
    private Integer page=1;
    private Integer limit=10;

    /**
     * 批量删除业维人员，存放业维人员ID的数组
     */
    private Integer[] ids;

}
