package com.smartfridge.dto;

import com.smartfridge.entity.Category;
import com.smartfridge.entity.MyFridge;
import java.math.BigDecimal;
import java.time.LocalDate;

public record MyFridgeResponse(
        Integer id,
        Integer ingredientId,
        String ingredientName,
        BigDecimal quantity,
        String standardUnit,
        String userUnit,
        BigDecimal userQuantity,
        String storageType,
        LocalDate addDate,
        LocalDate expireDate,
        Integer categoryId,
        String categoryName,
        String topCategory
) {
    public static MyFridgeResponse from(MyFridge f) {
        Category cat = f.getIngredient().getCategory();
        return new MyFridgeResponse(
                f.getId(),
                f.getIngredient().getId(),
                f.getIngredient().getName(),
                f.getQuantity(),
                f.getIngredient().getBaseUnit(),
                f.getUserUnit(),
                f.getUserQuantity(),
                f.getStorageType(),
                f.getAddDate(),
                f.getExpireDate(),
                cat != null ? cat.getId() : null,
                cat != null ? cat.getName() : null,
                resolveTopCategory(cat)
        );
    }

    /** Category 트리를 거슬러 올라가 식품(루트) 바로 아래 L1 카테고리명 반환. */
    private static String resolveTopCategory(Category cat) {
        if (cat == null) return null;
        Category cur = cat;
        // 부모가 루트(부모 없음)에 닿을 때까지 올라감
        while (cur.getParent() != null && cur.getParent().getParent() != null) {
            cur = cur.getParent();
        }
        return cur.getName();
    }
}
