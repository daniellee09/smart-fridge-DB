package com.smartfridge.repository;

import com.smartfridge.entity.MyFridge;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MyFridgeRepository extends JpaRepository<MyFridge, Integer> {

    List<MyFridge> findAllByOrderByExpireDateAsc();

    boolean existsByIngredient_Id(Integer ingredientId);

    @Modifying(clearAutomatically = true)
    @Query(value = """
            UPDATE My_Fridge mf
            JOIN Recipe_Ingredient ri ON mf.ingredient_id = ri.ingredient_id
            SET mf.quantity = mf.quantity + ri.required_qty
            WHERE ri.recipe_id = :recipeId
            """, nativeQuery = true)
    void restoreQuantityByRecipeId(@Param("recipeId") Integer recipeId);
}