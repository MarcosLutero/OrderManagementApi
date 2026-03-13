package com.lutero.ordermanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lutero.ordermanagement.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
