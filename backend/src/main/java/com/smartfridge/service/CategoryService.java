package com.smartfridge.service;

import com.smartfridge.dto.CategoryTreeResponse;
import com.smartfridge.repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    @Transactional(readOnly = true)
    public List<CategoryTreeResponse> getTree() {
        return categoryRepository.findByParentIsNull()
                .stream()
                .map(CategoryTreeResponse::from)
                .toList();
    }
}