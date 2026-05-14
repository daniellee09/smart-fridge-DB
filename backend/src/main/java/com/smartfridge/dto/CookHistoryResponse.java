package com.smartfridge.dto;

import com.smartfridge.entity.CookHistory;

import java.time.LocalDateTime;

public record CookHistoryResponse(
        Integer id,
        Integer recipeId,
        String recipeName,
        LocalDateTime cookedAt
) {
    public static CookHistoryResponse from(CookHistory h) {
        return new CookHistoryResponse(
                h.getId(),
                h.getRecipe().getId(),
                h.getRecipe().getName(),
                h.getCookedAt()
        );
    }
}
