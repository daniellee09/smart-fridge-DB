package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.dto.CookHistoryResponse;
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
    public ApiResponse<CookHistoryResponse> cook(@PathVariable Integer recipeId) {
        return ApiResponse.ok(cookService.cook(recipeId), "요리가 완료되었습니다.");
    }

    @GetMapping("/history")
    public ApiResponse<List<CookHistoryResponse>> getHistory() {
        return ApiResponse.ok(cookService.getHistory());
    }

    @DeleteMapping("/history/{historyId}")
    public ApiResponse<Void> deleteHistory(@PathVariable Integer historyId) {
        cookService.deleteHistory(historyId);
        return ApiResponse.ok(null, "요리 이력이 삭제되었습니다.");
    }
}
