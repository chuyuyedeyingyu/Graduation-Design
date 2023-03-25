package com.maple.bus.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * InnoDB free: 9216 kB
 * </p>
 *
 * @author wdf
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("bus_bsonline")
@ToString
public class Bsonline implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String bsname;

    private String operatorname;

    private String standard;

    private String frequencyrange;

    private String bsobject;

    private String longitude;

    private String latitude;

    private String bsaddress;

    private String belong;

    private String sector;

    private String colocation;

    private String bbufocus;

    private String planning;

    private String bsremarks;

    private Integer available;

}
