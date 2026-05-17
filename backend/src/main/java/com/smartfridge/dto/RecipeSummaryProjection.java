package com.smartfridge.dto;

public interface RecipeSummaryProjection {
    Integer getRecipeId();
    String getRecipeName();
    String getDifficulty();
    Integer getEstimatedTime();
    String getDescription();
}
