package com.smartfridge.repository;

import com.smartfridge.entity.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RecipeRepository extends JpaRepository<Recipe, Integer> {

    // 필수 재료를 100% 보유한 레시피만 반환 (관계대수 디비전)
    @Query(value = """
            SELECT r.recipe_id, r.recipe_name, r.difficulty, r.estimated_time, r.description
            FROM Recipe r
            JOIN Recipe_Ingredient ri ON r.recipe_id = ri.recipe_id
            LEFT JOIN My_Fridge f ON ri.ingredient_id = f.ingredient_id
                                 AND f.quantity >= ri.required_qty
            WHERE ri.is_essential = TRUE
            GROUP BY r.recipe_id, r.recipe_name, r.difficulty, r.estimated_time, r.description
            HAVING COUNT(f.fridge_item_id) = COUNT(ri.ingredient_id)
            """, nativeQuery = true)
    List<Recipe> findRecommended();
}
