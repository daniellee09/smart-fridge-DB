package com.smartfridge.dto;

import com.smartfridge.entity.RecipeIngredient;

import java.math.BigDecimal;

public record RecipeIngredientResponse(
        Integer ingredientId,
        String ingredientName,
        BigDecimal requiredQty,
        String unit,
        boolean essential,
        BigDecimal fridgeQty
) {
    public static RecipeIngredientResponse from(RecipeIngredient ri, BigDecimal fridgeQty) {
        return new RecipeIngredientResponse(
                ri.getIngredient().getId(),
                ri.getIngredient().getName(),
                ri.getRequiredQty(),
                ri.getUnit(),
                ri.isEssential(),
                fridgeQty
        );
    }
}
