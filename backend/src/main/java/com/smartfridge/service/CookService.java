package com.smartfridge.service;

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
    public CookHistory cook(Long recipeId) {
        Recipe recipe = recipeRepository.findById(recipeId)
                .orElseThrow(() -> new NoSuchElementException("레시피를 찾을 수 없습니다. id=" + recipeId));

        CookHistory history = CookHistory.of(recipe);
        cookHistoryRepository.save(history);

        // AFTER INSERT 트리거(trg_auto_stock_reduce)가 My_Fridge를 수정했으므로
        // JPA 캐시를 비워야 이후 조회 시 정확한 재고가 반환됨
        em.flush();
        em.clear();

        return history;
    }

    @Transactional(readOnly = true)
    public List<CookHistory> getHistory() {
        return cookHistoryRepository.findAllByOrderByCookedAtDesc();
    }
}
