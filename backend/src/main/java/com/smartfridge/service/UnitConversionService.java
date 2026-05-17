package com.smartfridge.service;

import com.smartfridge.dto.UnitConversionResponse;
import com.smartfridge.repository.UnitConversionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UnitConversionService {

    private final UnitConversionRepository unitConversionRepository;

    @Transactional(readOnly = true)
    public List<UnitConversionResponse> getUnits(Integer ingredientId) {
        return unitConversionRepository.findByIngredientId(ingredientId)
                .stream()
                .map(UnitConversionResponse::from)
                .toList();
    }
}