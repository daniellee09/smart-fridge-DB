package com.smartfridge.dto;

import java.math.BigDecimal;
import java.time.LocalDate;

public record MyFridgeCreateRequest(
        Integer ingredientId,
        String userUnit,
        BigDecimal userQuantity,
        String storageType,
        LocalDate addDate
) {}