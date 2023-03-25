package com.maple.bus.vo;

import com.maple.bus.entity.Materials;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class MaterialsVo extends Materials {

    private Integer page=1;
    private Integer limit=10;

}
