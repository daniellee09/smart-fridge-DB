package com.smartfridge.dto;

import com.smartfridge.entity.UnitConversion;
import java.math.BigDecimal;

public record UnitConversionResponse(
        Integer id,
        Integer ingredientId,
        String userUnit,
        BigDecimal convertToBase
) {
    public static UnitConversionResponse from(UnitConversion uc) {
        return new UnitConversionResponse(
                uc.getId(),
                uc.getIngredient().getId(),
                uc.getUserUnit(),
                uc.getConvertToBase()
        );
    }
}