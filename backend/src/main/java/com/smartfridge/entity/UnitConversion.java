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
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id")
    private IngredientMaster ingredient;

    @Column(name = "input_unit", nullable = false, length = 20)
    private String inputUnit;

    @Column(name = "converted_qty", nullable = false, precision = 10, scale = 2)
    private BigDecimal convertedQty;
}
