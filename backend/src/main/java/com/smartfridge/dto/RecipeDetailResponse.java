package com.smartfridge.dto;

import com.smartfridge.entity.Recipe;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

public record RecipeDetailResponse(
        Integer id,
        String name,
        String difficulty,
        Integer estimatedTime,
        String description,
        List<RecipeIngredientResponse> ingredients
) {
    public static RecipeDetailResponse from(Recipe r, Map<Integer, BigDecimal> fridgeByIngredientId) {
        return new RecipeDetailResponse(
                r.getId(),
                r.getName(),
                r.getDifficulty(),
                r.getEstimatedTime(),
                r.getDescription(),
                r.getIngredients().stream()
                        .map(ri -> RecipeIngredientResponse.from(ri,
                                fridgeByIngredientId.getOrDefault(ri.getIngredient().getId(), BigDecimal.ZERO)))
                        .toList()
        );
    }
}
