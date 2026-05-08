package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.Getter;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "My_Fridge")
@Getter
public class MyFridge {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fridge_item_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id", nullable = false)
    private IngredientMaster ingredient;

    @Column(name = "quantity", nullable = false, precision = 10, scale = 2)
    private BigDecimal quantity;

    @Column(name = "unit", nullable = false, length = 20)
    private String unit;

    // BEFORE INSERT 트리거(trg_auto_expire_date)가 자동으로 채워줌
    @Column(name = "expire_date")
    private LocalDate expireDate;

    @Column(name = "registered_date")
    private LocalDate registeredDate;
}
