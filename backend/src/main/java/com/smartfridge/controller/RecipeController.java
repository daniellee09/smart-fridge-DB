package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.entity.Recipe;
import com.smartfridge.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/recipes")
@RequiredArgsConstructor
public class RecipeController {

    private final RecipeService recipeService;

    @GetMapping
    public ApiResponse<List<Recipe>> getAll() {
        return ApiResponse.ok(recipeService.getAll());
    }

    @GetMapping("/recommend")
    public ApiResponse<List<Recipe>> getRecommended() {
        return ApiResponse.ok(recipeService.getRecommended());
    }
}
