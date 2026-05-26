package com.smartfridge.repository;

import com.smartfridge.entity.MyFridge;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.List;

public interface MyFridgeRepository extends JpaRepository<MyFridge, Integer> {

    List<MyFridge> findAllByOrderByExpireDateAsc();

    boolean existsByIngredient_Id(Integer ingredientId);

    /** 특정 재료의 냉장고 항목 목록 조회 (재고 복구 시 사용) */
    @Query("SELECT f FROM MyFridge f WHERE f.ingredient.id = :ingredientId ORDER BY f.expireDate ASC")
        List<MyFridge> findByIngredientId(@Param("ingredientId") Integer ingredientId);

    /**
     * 특정 냉장고 항목에 수량을 더함 (요리 이력 삭제 시 1회분 정확 복구에 사용)
         * clearAutomatically = true 로 1차 캐시 갱신
     */
    @Modifying(clearAutomatically = true)
        @Query(value = "UPDATE My_Fridge SET quantity = quantity + :qty WHERE fridge_item_id = :id",
                           nativeQuery = true)
        void addQuantityToItem(@Param("id") Integer fridgeItemId, @Param("qty") BigDecimal qty);

    /**
     * [Deprecated] 동일 레시피 N번 조리 후 1건만 삭제 시 N배 과복구 발생.
         * CookService.deleteHistory() 에서 더 이상 사용하지 않음.
         * @deprecated {@link #findByIngredientId} + {@link #addQuantityToItem} 조합으로 대체
                  */
    @Deprecated
        @Modifying(clearAutomatically = true)
        @Query(value = """
                           UPDATE My_Fridge mf
                           JOIN Recipe_Ingredient ri ON mf.ingredient_id = ri.ingredient_id
                           SET mf.quantity = mf.quantity + ri.required_qty
                           WHERE ri.recipe_id = :recipeId
                           """, nativeQuery = true)
        void restoreQuantityByRecipeId(@Param("recipeId") Integer recipeId);
}
