package com.lutero.ordermanagement.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.lutero.ordermanagement.entity.Category;

public interface CategoryRepository  extends JpaRepository <Category, Long>{
    boolean existsByNameIgnoreCase(String name);
    
}
