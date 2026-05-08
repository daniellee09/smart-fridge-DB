package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.entity.CookHistory;
import com.smartfridge.service.CookService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cook")
@RequiredArgsConstructor
public class CookController {

    private final CookService cookService;

    @PostMapping("/{recipeId}")
    public ApiResponse<CookHistory> cook(@PathVariable Long recipeId) {
        return ApiResponse.ok(cookService.cook(recipeId), "요리가 완료되었습니다.");
    }

    @GetMapping("/history")
    public ApiResponse<List<CookHistory>> getHistory() {
        return ApiResponse.ok(cookService.getHistory());
    }
}
