import { useState, useEffect } from 'react';
import { ChefHat, Clock, Calendar } from 'lucide-react';
import { getCookHistory } from '../api/history';

export default function HistoryPage() {
    const [history, setHistory] = useState([]);

    useEffect(() => {
        const fetchHistory = async () => {
            try {
                const data = await getCookHistory();
                setHistory(data);
            } catch (err) {
                console.error('요리 이력 불러오기 실패:', err);
            }
        };
        fetchHistory();
    }, []);

    return (
        <div className="min-h-screen bg-gradient-to-br from-gray-100 via-gray-50 to-white p-8">
            <div className="max-w-4xl mx-auto">
                <h1 className="text-4xl font-bold text-gray-800 mb-8">📋 요리 이력</h1>

                {history.length === 0 ? (
                    <div className="text-center py-20 text-gray-400">
                        <ChefHat className="w-16 h-16 mx-auto mb-4 opacity-30" />
                        <p className="text-lg">아직 요리 이력이 없어요</p>
                    </div>
                ) : (
                    <div className="space-y-4">
                        {history.map((item) => (
                            <div
                                key={item.id}
                                className="bg-white rounded-xl border-2 border-gray-200 p-5 hover:border-blue-300 hover:shadow-md transition-all"
                            >
                                <div className="flex items-start justify-between mb-3">
                                    <div className="flex items-center gap-2">
                                        <ChefHat className="w-5 h-5 text-blue-600" />
                                        <h3 className="text-xl font-bold text-gray-900">{item.recipeName}</h3>
                                    </div>
                                    <div className="flex items-center gap-1 text-sm text-gray-400">
                                        <Calendar className="w-4 h-4" />
                                        <span>{new Date(item.cookedAt).toLocaleDateString('ko-KR')}</span>
                                        <Clock className="w-4 h-4 ml-2" />
                                        <span>{new Date(item.cookedAt).toLocaleTimeString('ko-KR', { hour: '2-digit', minute: '2-digit' })}</span>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </div>
                )}
            </div>
        </div>
    );
}