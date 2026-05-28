package com.smartfridge.service;

import com.smartfridge.dto.FridgeStatusResponse;
import com.smartfridge.dto.MyFridgeCreateRequest;
import com.smartfridge.dto.MyFridgeResponse;
import com.smartfridge.dto.MyFridgeUpdateRequest;
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
import java.util.NoSuchElementException;

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

    @Transactional(readOnly = true)
    public List<FridgeStatusResponse> getStatus() {
        return myFridgeRepository.findFridgeStatus();
    }

    @Transactional
    public MyFridgeResponse add(MyFridgeCreateRequest req) {
        IngredientMaster ingredient = ingredientRepository.findById(req.ingredientId())
                .orElseThrow(() -> new NoSuchElementException(
                        "식재료를 찾을 수 없습니다. id=" + req.ingredientId()));

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
    public MyFridgeResponse update(Integer id, MyFridgeUpdateRequest req) {
        MyFridge item = myFridgeRepository.findById(id)
                .orElseThrow(() -> new NoSuchElementException(
                        "냉장고 항목을 찾을 수 없습니다. id=" + id));

        BigDecimal convertToBase = unitConversionRepository
                .findByIngredientIdAndUserUnit(item.getIngredient().getId(), req.userUnit())
                .map(uc -> uc.getConvertToBase())
                .orElse(BigDecimal.ONE);
        BigDecimal quantity = req.userQuantity().multiply(convertToBase);

        item.updateUserDetail(quantity, req.userUnit(), req.userQuantity(), req.storageType());
        return MyFridgeResponse.from(item);
    }

    @Transactional
    public void delete(Integer id) {
        myFridgeRepository.deleteById(id);
    }
}