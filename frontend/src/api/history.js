import client from './axios';

// 요리 이력 조회
export const getCookHistory = () => client.get('/cook/history');
