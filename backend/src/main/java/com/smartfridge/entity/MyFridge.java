package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "My_Fridge")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class MyFridge {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fridge_item_id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id", nullable = false)
    private IngredientMaster ingredient;

    @Column(name = "quantity", nullable = false, precision = 10, scale = 2)
    private BigDecimal quantity;

    @Column(name = "user_unit", nullable = false, length = 20)
    private String userUnit;

    @Column(name = "user_quantity", nullable = false, precision = 10, scale = 2)
    private BigDecimal userQuantity;

    @Column(name = "storage_type", nullable = false, length = 10)
    private String storageType;

    @Column(name = "add_date", nullable = false)
    private LocalDate addDate;

    // BEFORE INSERT 트리거(trg_auto_expire_date)가 자동으로 채워줌
    @Column(name = "expire_date")
    private LocalDate expireDate;

    public MyFridge(IngredientMaster ingredient, BigDecimal quantity,
                    String userUnit, BigDecimal userQuantity,
                    String storageType, LocalDate addDate) {
        this.ingredient = ingredient;
        this.quantity = quantity;
        this.userUnit = userUnit;
        this.userQuantity = userQuantity;
        this.storageType = storageType;
        this.addDate = addDate;
    }
}
