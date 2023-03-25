package com.maple.bus.vo;

import com.maple.bus.entity.Bsonline;
import com.maple.bus.entity.Operator;
import com.maple.bus.entity.Provider;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class BsonlineVo extends Bsonline {

    /**
     * 分页参数，当前是第一页，每页10条数据
     */
    private Integer page=1;
    private Integer limit=10;

    /**
     * 批量删除在网基站，存放在网基站ID的数组
     */
    private Integer[] ids;


}
