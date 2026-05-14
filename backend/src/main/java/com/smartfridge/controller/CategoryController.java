package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.dto.CategoryTreeResponse;
import com.smartfridge.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/categories")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping
    public ApiResponse<List<CategoryTreeResponse>> getTree() {
        return ApiResponse.ok(categoryService.getTree());
    }
}