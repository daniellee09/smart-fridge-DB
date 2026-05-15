package com.smartfridge.controller;

import com.smartfridge.common.ApiResponse;
import com.smartfridge.dto.MyFridgeCreateRequest;
import com.smartfridge.dto.MyFridgeResponse;
import com.smartfridge.service.MyFridgeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/fridge")
@RequiredArgsConstructor
public class MyFridgeController {

    private final MyFridgeService myFridgeService;

    @GetMapping
    public ApiResponse<List<MyFridgeResponse>> getAll() {
        return ApiResponse.ok(myFridgeService.getAll());
    }

    @PostMapping
    public ApiResponse<MyFridgeResponse> add(
            @RequestBody MyFridgeCreateRequest request) {
        return ApiResponse.ok(myFridgeService.add(request));
    }

    @DeleteMapping("/{id}")
    public ApiResponse<Void> delete(@PathVariable Integer id) {
        myFridgeService.delete(id);
        return ApiResponse.ok(null);
    }
}