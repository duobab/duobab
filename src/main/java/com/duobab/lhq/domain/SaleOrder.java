package com.duobab.lhq.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;

/**
 * 订单
 */
@Entity(name = "sale_order")
@Data
public class SaleOrder implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     */
    @Id
    private Long id;

    @Column(name = "document_type")
    private String document_type;

    @Column(name = "biz_date")
    private Timestamp biz_date;

    @Column
    private String number;

    @Column(name = "sal_employee")
    private String sal_employee;

    @Column
    private String customer;

    @Column(name = "amount_total", scale = 5, precision = 19)
    private BigDecimal amount_total;
}
