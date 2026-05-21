package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.dto.IngredientRecipeResponse;
import com.smartfridge.dto.RecipeDetailResponse;
import com.smartfridge.dto.RecipeSummaryResponse;
import com.smartfridge.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/recipes")
@RequiredArgsConstructor
public class RecipeController {

    private final RecipeService recipeService;

    @GetMapping
    public ApiResponse<List<RecipeSummaryResponse>> getAll() {
        return ApiResponse.ok(recipeService.getAll());
    }

    @GetMapping("/recommend")
    public ApiResponse<List<RecipeSummaryResponse>> getRecommended() {
        return ApiResponse.ok(recipeService.getRecommended());
    }

    @GetMapping("/by-ingredient/{ingredientId}")
    public ApiResponse<List<IngredientRecipeResponse>> getByIngredient(@PathVariable Integer ingredientId) {
        return ApiResponse.ok(recipeService.getRecipesByIngredient(ingredientId));
    }

    @GetMapping("/{id}")
    public ApiResponse<RecipeDetailResponse> getDetail(@PathVariable Integer id) {
        return ApiResponse.ok(recipeService.getDetail(id));
    }
}
