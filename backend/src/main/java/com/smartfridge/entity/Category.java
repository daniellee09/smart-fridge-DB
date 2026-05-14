package com.smartfridge.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Category")
@Getter
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id")
    private Integer id;

    @Column(name = "category_name", nullable = false, length = 50)
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_id")
    private Category parent;

    // JSON 직렬화 시 parent ↔ children 순환 참조 방지 (자기 참조 트리)
    @JsonIgnore
    @OneToMany(mappedBy = "parent")
    private List<Category> children = new ArrayList<>();

    @Column(name = "default_days")
    private Integer defaultDays;
}
