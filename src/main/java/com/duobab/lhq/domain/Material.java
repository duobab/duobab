package com.duobab.lhq.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 商品
 */
@Entity(name = "material")
@Data
public class Material implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     */
    @Id
    @GeneratedValue
    private Long id;
    /**
     * 商品名称
     */
//    @Column(nullable = false, unique = false)
    @Column
    private String name;
    /**
     * 商品单位
     */
    @Column
    private String unit;
    /**
     * 商品单价
     */
    @Column(name = "unit_price", scale = 5, precision = 19)
    private BigDecimal unit_price;

}
