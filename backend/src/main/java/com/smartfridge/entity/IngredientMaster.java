package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Table(name = "Ingredient_Master")
@Getter
public class IngredientMaster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ingredient_id")
    private Integer id;

    @Column(name = "ingredient_name", nullable = false, length = 100)
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private Category category;

    @Column(name = "base_unit", length = 20)
    private String baseUnit;
}
