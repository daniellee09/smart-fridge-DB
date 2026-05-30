import axios from 'axios';

// 개발(Vite dev 서버): VITE_API_URL 미설정 → '/api'로 떨어져 vite.config.js의 proxy가 처리.
// 배포(Vercel 등): VITE_API_URL=https://<백엔드>/api 로 빌드 시점에 주입.
const client = axios.create({
    baseURL: import.meta.env.VITE_API_URL ?? '/api',
});

// 응답 래퍼 { success, data, message } 에서 data만 꺼내기
client.interceptors.response.use(
    (res) => res.data.data,
    (err) => Promise.reject(err)
);

export default client;