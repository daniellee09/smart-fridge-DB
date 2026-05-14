package com.smartfridge.dto;

import com.smartfridge.entity.Category;

public record CategoryResponse(
        Integer id,
        String name,
        Integer parentId,
        Integer defaultDays
) {
    public static CategoryResponse from(Category c) {
        return new CategoryResponse(
                c.getId(),
                c.getCategoryName(),
                c.getParent() != null ? c.getParent().getId() : null,
                c.getDefaultDays()
        );
    }
}