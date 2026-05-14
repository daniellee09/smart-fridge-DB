package com.smartfridge.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;

import java.math.BigDecimal;

@Entity
@Table(name = "Recipe_Ingredient")
@Getter
public class RecipeIngredient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recipe_ingredient_id")
    private Integer id;

    // JSON 직렬화 시 Recipe → ingredients → recipe 순환 참조 방지
    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipe_id", nullable = false)
    private Recipe recipe;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id", nullable = false)
    private IngredientMaster ingredient;

    @Column(name = "required_qty", nullable = false, precision = 10, scale = 2)
    private BigDecimal requiredQty;

    @Column(name = "unit", nullable = false, length = 20)
    private String unit;

    // 추천 쿼리의 핵심: 필수 재료 여부
    @Column(name = "is_essential", nullable = false)
    private boolean essential;
}
