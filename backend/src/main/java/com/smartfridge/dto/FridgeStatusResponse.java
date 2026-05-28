package com.smartfridge.dto;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * v_fridge_status 뷰의 사용자 친화적 매핑 (interface projection).
 * 내부 ID와 원시 quantity(g/ml)를 숨기고 사용자 단위 기준 정보만 노출한다.
 * Spring Data JPA의 native query 결과를 동적 프록시로 매핑한다.
 */
public interface FridgeStatusResponse {
    String getIngredientName();
    BigDecimal getUserQuantity();
    String getUserUnit();
    String getStorageType();
    LocalDate getExpireDate();
    Integer getDaysLeft();
}
