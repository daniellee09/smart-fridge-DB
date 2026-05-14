package com.smartfridge.dto;

import com.smartfridge.entity.MyFridge;
import java.math.BigDecimal;
import java.time.LocalDate;

public record MyFridgeResponse(
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
    public static MyFridgeResponse from(MyFridge f) {
        return new MyFridgeResponse(
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