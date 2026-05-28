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
     * 요리 이력 1건 삭제 + 재고 복구.
     * 트리거가 소진 후 삭제한 재료는 Category.default_storage_type을 사용해 신규 삽입한다.
     * (사용자가 등록 시 선택했던 정확한 storage_type까지 복원하려면 별도 이력 테이블이 필요)
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
                                    String storageType = ri.getIngredient().getCategory() != null
                                            ? ri.getIngredient().getCategory().getDefaultStorageType()
                                            : "냉장";
                                    myFridgeRepository.save(new MyFridge(
                                                                ri.getIngredient(),
                                                                ri.getRequiredQty(),
                                                                ri.getUnit(),
                                                                ri.getRequiredQty(),
                                                                storageType,
                                                                LocalDate.now()
                                                        ));
                                }
                }

                // 재고 복구 완료 후 이력 삭제
                cookHistoryRepository.deleteById(historyId);
            }
    }
