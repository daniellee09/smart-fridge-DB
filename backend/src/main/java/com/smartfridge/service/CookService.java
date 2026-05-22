package com.smartfridge.service;

import com.smartfridge.dto.CookHistoryResponse;
import com.smartfridge.entity.CookHistory;
import com.smartfridge.entity.MyFridge;
import com.smartfridge.entity.Recipe;
import com.smartfridge.entity.RecipeIngredient;
import com.smartfridge.repository.CookHistoryRepository;
import com.smartfridge.repository.MyFridgeRepository;
import com.smartfridge.repository.RecipeIngredientRepository;
import com.smartfridge.repository.RecipeRepository;
import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class CookService {

    private final CookHistoryRepository cookHistoryRepository;
    private final RecipeRepository recipeRepository;
    private final MyFridgeRepository myFridgeRepository;
    private final RecipeIngredientRepository recipeIngredientRepository;
    private final EntityManager em;

    @Transactional
    public CookHistoryResponse cook(Integer recipeId) {
        Recipe recipe = recipeRepository.findById(recipeId)
                .orElseThrow(() -> new NoSuchElementException("레시피를 찾을 수 없습니다. id=" + recipeId));

        CookHistory history = CookHistory.of(recipe);
        cookHistoryRepository.save(history);

        em.flush();
        // 트리거가 수정한 My_Fridge를 이후 조회 시 정확히 반환하도록 캐시 비움
        // DTO 변환을 clear() 전에 수행해야 lazy 필드(recipe) 접근 가능
        CookHistoryResponse response = CookHistoryResponse.from(history);
        em.clear();

        return response;
    }

    @Transactional(readOnly = true)
    public List<CookHistoryResponse> getHistory() {
        return cookHistoryRepository.findAllByOrderByCookedAtDesc().stream()
                .map(CookHistoryResponse::from)
                .toList();
    }

    @Transactional
    public void deleteHistory(Integer historyId) {
        CookHistory history = cookHistoryRepository.findById(historyId)
                .orElseThrow(() -> new NoSuchElementException("요리 이력을 찾을 수 없습니다. id=" + historyId));

        Integer recipeId = history.getRecipe().getId();

        // 1) 트리거가 차감했던 수량을 다시 더해줌 (트리거 역연산)
        myFridgeRepository.restoreQuantityByRecipeId(recipeId);

        // 2) 트리거가 완전 소진 후 삭제한 재료를 재삽입
        List<RecipeIngredient> ingredients = recipeIngredientRepository.findByRecipeIdWithIngredient(recipeId);
        for (RecipeIngredient ri : ingredients) {
            if (!myFridgeRepository.existsByIngredient_Id(ri.getIngredient().getId())) {
                myFridgeRepository.save(new MyFridge(
                        ri.getIngredient(),
                        ri.getRequiredQty(),
                        ri.getUnit(),
                        ri.getRequiredQty(),
                        "냉장",
                        LocalDate.now()
                ));
            }
        }

        // 3) 이력 삭제
        cookHistoryRepository.deleteById(historyId);
    }
}
