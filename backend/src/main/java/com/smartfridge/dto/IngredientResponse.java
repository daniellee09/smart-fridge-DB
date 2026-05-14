package com.smartfridge.dto;

import com.smartfridge.entity.IngredientMaster;

public record IngredientResponse(
        Integer id,
        String name,
        String categoryName,
        String baseUnit
) {
    public static IngredientResponse from(IngredientMaster im) {
        return new IngredientResponse(
                im.getId(),
                im.getIngredientName(),
                im.getCategory().getCategoryName(),
                im.getBaseUnit()
        );
    }
}