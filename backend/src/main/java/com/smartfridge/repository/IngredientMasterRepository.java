package com.smartfridge.repository;

import com.smartfridge.entity.IngredientMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface IngredientMasterRepository extends JpaRepository<IngredientMaster, Integer> {
    List<IngredientMaster> findByNameContaining(String keyword);
}