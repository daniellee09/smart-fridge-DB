import axios from 'axios';

const client = axios.create({
    baseURL: '/api',
});

// 응답 래퍼 { success, data, message } 에서 data만 꺼내기
client.interceptors.response.use(
    (res) => res.data.data,
    (err) => Promise.reject(err)
);

export default client;