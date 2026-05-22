import client from './axios';

export const getCookHistory = () => client.get('/cook/history');
export const deleteCookHistory = (historyId) => client.delete(`/cook/history/${historyId}`);
