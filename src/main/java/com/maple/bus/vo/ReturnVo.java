package com.maple.bus.vo;

import com.maple.bus.entity.Operator;
import com.maple.bus.entity.Return;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class ReturnVo extends Return{

    /**
     * 分页参数，当前是第一页，每页10条数据
     */
    private Integer page=1;
    private Integer limit=10;

    /**
     * 批量删除物料发放，存放物料发放ID的数组
     */
    private Integer[] ids;

}
