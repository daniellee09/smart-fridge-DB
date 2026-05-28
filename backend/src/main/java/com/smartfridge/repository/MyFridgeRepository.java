package com.smartfridge.repository;

import com.smartfridge.dto.FridgeStatusResponse;
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
     * 특정 냉장고 항목에 수량을 더함 (요리 이력 삭제 시 1회분 정확 복구에 사용).
     * 트리거 trg_auto_stock_reduce가 차감 시 user_quantity를 비례 차감하므로,
     * 복원 시에도 동일 비율로 user_quantity를 함께 늘려 일관성을 유지한다.
     * MariaDB는 SET 절을 좌→우 평가하므로 user_quantity를 quantity보다 먼저 계산해야 한다.
     *
     * clearAutomatically=false: caller가 같은 트랜잭션에서 LAZY 연관(Ingredient.category 등)을
     * 이어서 접근하므로 1차 캐시를 비우면 LazyInitializationException 위험이 있다.
     * 본 SQL은 update 대상 row를 같은 트랜잭션에서 다시 조회하지 않으므로 stale 캐시 문제도 없다.
     */
    @Modifying
        @Query(value = """
                       UPDATE My_Fridge
                       SET
                           user_quantity = CASE
                               WHEN quantity > 0
                                   THEN user_quantity + (:qty * user_quantity / quantity)
                               ELSE user_quantity + :qty
                           END,
                           quantity = quantity + :qty
                       WHERE fridge_item_id = :id
                       """, nativeQuery = true)
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

    /**
     * v_fridge_status 뷰를 조회해 사용자 친화적 형태로 반환.
     * 한글 컬럼명을 영문 alias로 매핑하여 record DTO에 바인딩한다.
     */
    @Query(value = """
                   SELECT
                       식재료명  AS ingredientName,
                       보유량    AS userQuantity,
                       단위      AS userUnit,
                       보관방법  AS storageType,
                       유통기한  AS expireDate,
                       잔여일수  AS daysLeft
                   FROM v_fridge_status
                   """, nativeQuery = true)
    List<FridgeStatusResponse> findFridgeStatus();
}
