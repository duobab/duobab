package com.duobab.lhq.dao;

import com.duobab.lhq.domain.Stock;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StockRepository extends JpaRepository<Stock, Long> {
//    Product findByName(String name);
}
