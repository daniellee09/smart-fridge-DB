package com.smartfridge.service;

import com.smartfridge.dto.IngredientResponse;
import com.smartfridge.repository.IngredientMasterRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class IngredientService {

    private final IngredientMasterRepository ingredientRepository;

    @Transactional(readOnly = true)
    public List<IngredientResponse> search(String keyword) {
        return ingredientRepository.findByNameContaining(keyword)
                .stream()
                .map(IngredientResponse::from)
                .toList();
    }
}