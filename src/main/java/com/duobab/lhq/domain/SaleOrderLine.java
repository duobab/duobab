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
@Entity(name = "sale_order_line")
@Data
public class SaleOrderLine implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     */
    @Id
    @GeneratedValue
    private Long id;
    @Column(name = "material_id")
    private long material_id;
    @Column(name = "quantity", scale = 5, precision = 19)
    private BigDecimal quantity;
    @Column(name = "amount", scale = 5, precision = 19)
    private BigDecimal amount;

    @Column(name = "saleorder_id")
    private long saleorder_id;

}
