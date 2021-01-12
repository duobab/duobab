package com.duobab.lhq.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 库存
 */
@Entity(name = "stock")
@Data
public class Stock implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     */
    @Id
    @GeneratedValue
    private Long id;
    /**
     * 商品id
     */
    @Column(name = "material_id_id")
    private Long material_id_id;

    /**
     * 库存数量
     */
    @Column(name = "quantity", scale = 5, precision = 19)
    private BigDecimal quantity;

}
