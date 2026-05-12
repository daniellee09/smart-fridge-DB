package com.smartfridge.entity;

import jakarta.persistence.*;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Recipe")
@Getter
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recipe_id")
    private Long id;

    @Column(name = "recipe_name", nullable = false, length = 100)
    private String name;

    @Column(name = "difficulty", columnDefinition = "ENUM('easy','medium','hard')")
    private String difficulty;

    @Column(name = "estimated_time")
    private Integer estimatedTime;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @OneToMany(mappedBy = "recipe", fetch = FetchType.LAZY)
    private List<RecipeIngredient> ingredients = new ArrayList<>();
}
