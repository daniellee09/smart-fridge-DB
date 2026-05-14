package com.smartfridge.dto;

import com.smartfridge.entity.Category;
import java.util.List;

public record CategoryTreeResponse(
        Integer id,
        String name,
        Integer defaultDays,
        List<CategoryTreeResponse> children
) {
    public static CategoryTreeResponse from(Category c) {
        return new CategoryTreeResponse(
                c.getId(),
                c.getCategoryName(),
                c.getDefaultDays(),
                c.getChildren().stream()
                        .map(CategoryTreeResponse::from)
                        .toList()
        );
    }
}