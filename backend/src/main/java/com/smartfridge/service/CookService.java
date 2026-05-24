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

    /**
     * 요리 이력 1건 삭제 + 재고 복구
         *
         * [수정] 기존 restoreQuantityByRecipeId()는 동일 레시피를 N번 조리한 경우
         * 현재 냉장고에 존재하는 모든 행에 required_qty를 더하므로 N배 과복구됩니다.
         * 수정된 로직은 RecipeIngredient를 직접 순회하여 재료별로 정확히 1회분만 복구합니다.
         *   - 냉장고에 해당 재료가 존재하면 required_qty 만큼 수량 증가
         *   - 트리거가 소진 후 삭제한 재료는 신규 삽입 (단, 기존 storage_type 정보가 없어
                                             *     "냉장" 기본값으로 복원되는 한계는 이력 테이블에 storage_type 컬럼을 추가해야
                                             *     완전히 해결됩니다 — TODO 참고)
                                             */
    @Transactional
            public void deleteHistory(Integer historyId) {
                        CookHistory history = cookHistoryRepository.findById(historyId)
                                            .orElseThrow(() -> new NoSuchElementException("요리 이력을 찾을 수 없습니다. id=" + historyId));

                Integer recipeId = history.getRecipe().getId();

                List<RecipeIngredient> ingredients =
                                    recipeIngredientRepository.findByRecipeIdWithIngredient(recipeId);

                for (RecipeIngredient ri : ingredients) {
                                Integer ingredientId = ri.getIngredient().getId();

                            // 냉장고에 해당 재료가 있으면 정확히 1회분(required_qty)만 복구
                            List<MyFridge> existing = myFridgeRepository.findByIngredientId(ingredientId);
                                if (!existing.isEmpty()) {
                                                    // 수량이 가장 적은(먼저 소진될) 항목에 복구
                                    myFridgeRepository.addQuantityToItem(existing.get(0).getId(), ri.getRequiredQty());
                                } else {
                                                    // TODO: Cook_History에 storage_type 컬럼 추가 후 원래 값으로 복원 필요
                                    // 현재는 냉장/required_qty 기본값으로 재삽입 (유통기한도 오늘 기준 재계산됨)
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

                // 재고 복구 완료 후 이력 삭제
                cookHistoryRepository.deleteById(historyId);
            }
    }
