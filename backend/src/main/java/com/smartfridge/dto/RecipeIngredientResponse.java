package com.smartfridge.dto;

import com.smartfridge.entity.RecipeIngredient;

import java.math.BigDecimal;

public record RecipeIngredientResponse(
        Integer ingredientId,
        String ingredientName,
        BigDecimal requiredQty,
        String unit,
        boolean essential
) {
    public static RecipeIngredientResponse from(RecipeIngredient ri) {
        return new RecipeIngredientResponse(
                ri.getIngredient().getId(),
                ri.getIngredient().getName(),
                ri.getRequiredQty(),
                ri.getUnit(),
                ri.isEssential()
        );
    }
}
