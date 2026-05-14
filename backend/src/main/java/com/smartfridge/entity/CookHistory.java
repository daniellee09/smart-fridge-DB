package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.Getter;

import java.time.LocalDateTime;

@Entity
@Table(name = "Cook_History")
@Getter
public class CookHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "history_id")
    private Integer id;

    // AFTER INSERT 트리거(trg_auto_stock_reduce)가 재고 자동 차감
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipe_id", nullable = false)
    private Recipe recipe;

    @Column(name = "cooked_at", nullable = false)
    private LocalDateTime cookedAt;

    public static CookHistory of(Recipe recipe) {
        CookHistory history = new CookHistory();
        history.recipe = recipe;
        history.cookedAt = LocalDateTime.now();
        return history;
    }
}
