package com.smartfridge.service;

import com.smartfridge.dto.IngredientRecipeResponse;
import com.smartfridge.dto.IngredientRecipeRow;
import com.smartfridge.dto.RecipeDetailResponse;
import com.smartfridge.dto.RecipeSummaryResponse;
import com.smartfridge.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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

    public List<IngredientRecipeResponse> getRecipesByIngredient(Integer ingredientId) {
        List<IngredientRecipeRow> rows = recipeRepository.findByIngredientWithStatus(ingredientId);

        // recipeId 기준으로 그룹핑 (삽입 순서 유지)
        Map<Integer, List<IngredientRecipeRow>> grouped = new LinkedHashMap<>();
        for (IngredientRecipeRow row : rows) {
            grouped.computeIfAbsent(row.getRecipeId(), k -> new ArrayList<>()).add(row);
        }

        List<IngredientRecipeResponse> result = grouped.values().stream()
                .map(recipeRows -> {
                    IngredientRecipeRow first = recipeRows.get(0);
                    List<String> missing = recipeRows.stream()
                            .filter(r -> r.getSatisfied() == 0)
                            .map(IngredientRecipeRow::getEssentialName)
                            .toList();
                    boolean canMake = missing.isEmpty();
                    return new IngredientRecipeResponse(
                            first.getRecipeId(),
                            first.getRecipeName(),
                            first.getDifficulty(),
                            first.getEstimatedTime(),
                            first.getDescription(),
                            canMake,
                            missing
                    );
                })
                .sorted(Comparator
                        .comparing(IngredientRecipeResponse::canMake).reversed()
                        .thenComparingInt(r -> r.missingIngredients().size()))
                .toList();

        return result;
    }
}
