package com.lutero.ordermanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lutero.ordermanagement.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    
}
