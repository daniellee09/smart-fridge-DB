package com.smartfridge.repository;

import com.smartfridge.entity.UnitConversion;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface UnitConversionRepository extends JpaRepository<UnitConversion, Integer> {
    List<UnitConversion> findByIngredientId(Integer ingredientId);
    Optional<UnitConversion> findByIngredientIdAndUserUnit(Integer ingredientId, String userUnit);
}