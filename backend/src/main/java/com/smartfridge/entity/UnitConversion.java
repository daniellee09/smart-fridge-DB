package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.Getter;

import java.math.BigDecimal;

@Entity
@Table(name = "Unit_Conversion")
@Getter
public class UnitConversion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "conversion_id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id")
    private IngredientMaster ingredient;

    @Column(name = "user_unit", nullable = false, length = 20)
    private String userUnit;

    @Column(name = "convert_to_base", nullable = false, precision = 10, scale = 2)
    private BigDecimal convertToBase;
}
