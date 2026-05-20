import client from './axios';

// 식재료 검색 (자동완성용)
export const searchIngredients = (keyword) =>
    client.get('/ingredients', { params: { keyword, limit: 10 } });

// 카테고리 조회
export const getCategories = () => client.get('/categories');