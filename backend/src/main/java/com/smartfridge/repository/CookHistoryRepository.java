package com.smartfridge.repository;

import com.smartfridge.entity.CookHistory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CookHistoryRepository extends JpaRepository<CookHistory, Integer> {

    List<CookHistory> findAllByOrderByCookedAtDesc();
}
