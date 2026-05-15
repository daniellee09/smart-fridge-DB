package com.smartfridge.dto;

import com.smartfridge.entity.Recipe;

public record RecipeSummaryResponse(
        Integer id,
        String name,
        String difficulty,
        Integer estimatedTime,
        String description
) {
    public static RecipeSummaryResponse from(Recipe r) {
        return new RecipeSummaryResponse(
                r.getId(),
                r.getName(),
                r.getDifficulty(),
                r.getEstimatedTime(),
                r.getDescription()
        );
    }

    public static RecipeSummaryResponse from(RecipeSummaryProjection p) {
        return new RecipeSummaryResponse(
                p.getRecipeId(),
                p.getRecipeName(),
                p.getDifficulty(),
                p.getEstimatedTime(),
                p.getDescription()
        );
    }
}
