package com.smartfridge.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

import java.math.BigDecimal;
import java.time.LocalDate;

public record MyFridgeCreateRequest(

                @NotNull(message = "식재료 ID는 필수입니다.")
                Integer ingredientId,

                @NotBlank(message = "단위는 필수입니다.")
                String userUnit,

                @NotNull(message = "수량은 필수입니다.")
                @Positive(message = "수량은 0보다 커야 합니다.")
                BigDecimal userQuantity,

                @NotBlank(message = "보관 방법은 필수입니다.")
                String storageType,

                @NotNull(message = "추가 날짜는 필수입니다.")
                LocalDate addDate
        ) {}
