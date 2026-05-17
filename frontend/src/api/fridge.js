import client from './axios';

// 냉장고 재고 조회
export const getFridge = () => client.get('/fridge');

// 식재료 추가
export const addFridgeItem = (data) => client.post('/fridge', data);

// 식재료 삭제
export const deleteFridgeItem = (id) => client.delete(`/fridge/${id}`);