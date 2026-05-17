import client from './axios';

// 요리 이력 조회
export const getCookHistory = () => client.get('/cook/history');

// 요리 완료
export const postCookHistory = (recipeId) => client.post(`/cook/history/${recipeId}`);