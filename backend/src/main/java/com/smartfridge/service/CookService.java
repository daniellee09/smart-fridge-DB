package com.smartfridge.service;

import com.smartfridge.dto.CookHistoryResponse;
import com.smartfridge.entity.CookHistory;
import com.smartfridge.entity.Recipe;
import com.smartfridge.repository.CookHistoryRepository;
import com.smartfridge.repository.RecipeRepository;
import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class CookService {

    private final CookHistoryRepository cookHistoryRepository;
    private final RecipeRepository recipeRepository;
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
}
