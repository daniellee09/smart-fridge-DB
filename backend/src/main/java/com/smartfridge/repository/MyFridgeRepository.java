package com.smartfridge.repository;

import com.smartfridge.entity.MyFridge;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface MyFridgeRepository extends JpaRepository<MyFridge, Integer> {
    List<MyFridge> findAllByOrderByExpireDateAsc();
}