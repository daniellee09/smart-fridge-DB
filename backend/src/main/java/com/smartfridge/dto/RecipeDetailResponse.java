package com.smartfridge.dto;

import com.smartfridge.entity.Recipe;

import java.util.List;

public record RecipeDetailResponse(
        Integer id,
        String name,
        String difficulty,
        Integer estimatedTime,
        String description,
        List<RecipeIngredientResponse> ingredients
) {
    public static RecipeDetailResponse from(Recipe r) {
        return new RecipeDetailResponse(
                r.getId(),
                r.getName(),
                r.getDifficulty(),
                r.getEstimatedTime(),
                r.getDescription(),
                r.getIngredients().stream().map(RecipeIngredientResponse::from).toList()
        );
    }
}
