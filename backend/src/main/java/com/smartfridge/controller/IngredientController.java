package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.dto.IngredientResponse;
import com.smartfridge.dto.UnitConversionResponse;
import com.smartfridge.service.IngredientService;
import com.smartfridge.service.UnitConversionService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/ingredients")
@RequiredArgsConstructor
public class IngredientController {

    private final IngredientService ingredientService;
    private final UnitConversionService unitConversionService;

    @GetMapping
    public ApiResponse<List<IngredientResponse>> search(
            @RequestParam String keyword) {
        return ApiResponse.ok(ingredientService.search(keyword));
    }

    @GetMapping("/{id}/units")
    public ApiResponse<List<UnitConversionResponse>> getUnits(
            @PathVariable Integer id) {
        return ApiResponse.ok(unitConversionService.getUnits(id));
    }
}