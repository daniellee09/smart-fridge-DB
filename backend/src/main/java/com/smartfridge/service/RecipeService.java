package com.smartfridge.service;

import com.smartfridge.dto.RecipeDetailResponse;
import com.smartfridge.dto.RecipeSummaryResponse;
import com.smartfridge.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class RecipeService {

    private final RecipeRepository recipeRepository;

    public List<RecipeSummaryResponse> getAll() {
        return recipeRepository.findAll().stream()
                .map(RecipeSummaryResponse::from)
                .toList();
    }

    public List<RecipeSummaryResponse> getRecommended() {
        return recipeRepository.findRecommended().stream()
                .map(RecipeSummaryResponse::from)
                .toList();
    }

    public RecipeDetailResponse getDetail(Integer id) {
        return recipeRepository.findDetailById(id)
                .map(RecipeDetailResponse::from)
                .orElseThrow(() -> new NoSuchElementException("레시피를 찾을 수 없습니다. id=" + id));
    }
}
