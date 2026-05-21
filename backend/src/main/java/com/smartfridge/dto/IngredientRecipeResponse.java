package com.smartfridge.dto;

import java.util.List;

public record IngredientRecipeResponse(
        Integer id,
        String name,
        String difficulty,
        Integer estimatedTime,
        String description,
        boolean canMake,
        List<String> missingIngredients
) {}
