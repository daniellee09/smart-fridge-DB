package com.smartfridge.dto;

import com.smartfridge.entity.MyFridge;
import java.math.BigDecimal;
import java.time.LocalDate;

public record FridgeItemResponse(
        Integer id,
        Integer ingredientId,
        String ingredientName,
        BigDecimal quantity,
        String userUnit,
        BigDecimal userQuantity,
        String storageType,
        LocalDate addDate,
        LocalDate expireDate
) {
    public static FridgeItemResponse from(MyFridge f) {
        return new FridgeItemResponse(
                f.getId(),
                f.getIngredient().getId(),
                f.getIngredient().getName(),
                f.getQuantity(),
                f.getUserUnit(),
                f.getUserQuantity(),
                f.getStorageType(),
                f.getAddDate(),
                f.getExpireDate()
        );
    }
}