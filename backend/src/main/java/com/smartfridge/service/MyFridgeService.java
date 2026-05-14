package com.smartfridge.service;

import com.smartfridge.dto.MyFridgeCreateRequest;
import com.smartfridge.dto.MyFridgeResponse;
import com.smartfridge.entity.IngredientMaster;
import com.smartfridge.entity.MyFridge;
import com.smartfridge.repository.IngredientMasterRepository;
import com.smartfridge.repository.MyFridgeRepository;
import com.smartfridge.repository.UnitConversionRepository;
import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class MyFridgeService {

    private final MyFridgeRepository myFridgeRepository;
    private final IngredientMasterRepository ingredientRepository;
    private final UnitConversionRepository unitConversionRepository;
    private final EntityManager em;

    @Transactional(readOnly = true)
    public List<MyFridgeResponse> getAll() {
        return myFridgeRepository.findAllByOrderByExpireDateAsc()
                .stream()
                .map(MyFridgeResponse::from)
                .toList();
    }

    @Transactional
    public MyFridgeResponse add(MyFridgeCreateRequest req) {
        IngredientMaster ingredient = ingredientRepository.findById(req.ingredientId())
                .orElseThrow(() -> new RuntimeException("식재료를 찾을 수 없습니다."));

        // 단위 환산
        BigDecimal convertToBase = unitConversionRepository
                .findByIngredientIdAndUserUnit(req.ingredientId(), req.userUnit())
                .map(uc -> uc.getConvertToBase())
                .orElse(BigDecimal.ONE);

        BigDecimal quantity = req.userQuantity().multiply(convertToBase);

        MyFridge item = new MyFridge(
                ingredient,
                quantity,
                req.userUnit(),
                req.userQuantity(),
                req.storageType(),
                req.addDate()
        );

        myFridgeRepository.save(item);

        // 트리거가 expire_date 자동 설정 → JPA 캐시 갱신
        em.flush();
        em.refresh(item);

        return MyFridgeResponse.from(item);
    }

    @Transactional
    public void delete(Integer id) {
        myFridgeRepository.deleteById(id);
    }
}