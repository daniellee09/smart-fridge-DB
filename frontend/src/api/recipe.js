import client from './axios';

// 전체 레시피 목록
export const getRecipes = (difficulty) =>
    client.get('/recipes', { params: { difficulty } });

// 레시피 상세
export const getRecipeDetail = (id) => client.get(`/recipes/${id}`);

// 추천 레시피 (냉장고 재료 기반)
export const getRecommendedRecipes = (sort = 'expire') =>
    client.get('/recipes/recommend', { params: { sort } });

// 요리 완료
export const cookRecipe = (recipeId) => client.post(`/cook/${recipeId}`);