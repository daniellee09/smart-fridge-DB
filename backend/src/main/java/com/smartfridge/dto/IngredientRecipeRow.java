package com.smartfridge.dto;

public interface IngredientRecipeRow {
    Integer getRecipeId();
    String getRecipeName();
    String getDifficulty();
    Integer getEstimatedTime();
    String getDescription();
    String getEssentialName();
    Integer getSatisfied();
}
