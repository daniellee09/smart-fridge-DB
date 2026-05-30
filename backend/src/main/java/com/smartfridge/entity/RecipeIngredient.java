package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.Getter;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import java.math.BigDecimal;

@Entity
@Table(name = "Recipe_Ingredient")
@Getter
public class RecipeIngredient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recipe_ingredient_id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipe_id", nullable = false)
    private Recipe recipe;

    // ETL로 적재된 일부 Recipe_Ingredient 행이 Ingredient_Master에 없는 ingredient_id를 참조하는
    // orphan 케이스가 존재 → 기본 동작(FetchNotFoundException)이면 detail 조회가 500으로 깨짐.
    // IGNORE로 누락 시 null로 처리하고, 호출부에서 null인 ingredient는 건너뛴다.
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id", nullable = false)
    @NotFound(action = NotFoundAction.IGNORE)
    private IngredientMaster ingredient;

    @Column(name = "required_qty", nullable = false, precision = 10, scale = 2)
    private BigDecimal requiredQty;

    @Column(name = "unit", nullable = false, length = 20)
    private String unit;

    // 추천 쿼리의 핵심: 필수 재료 여부
    @Column(name = "is_essential", nullable = false)
    private boolean essential;
}
