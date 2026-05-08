package com.smartfridge.service;

import com.smartfridge.entity.Recipe;
import com.smartfridge.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class RecipeService {

    private final RecipeRepository recipeRepository;

    public List<Recipe> getRecommended() {
        return recipeRepository.findRecommended();
    }

    public List<Recipe> getAll() {
        return recipeRepository.findAll();
    }
}
