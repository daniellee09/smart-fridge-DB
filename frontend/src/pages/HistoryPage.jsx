import { useState } from 'react';
import { ChefHat, Clock, Calendar } from 'lucide-react';

// 백엔드 연동 전 Mock 이력 데이터
const MOCK_HISTORY = [
    {
        historyId: 1,
        recipeName: '김치찌개',
        cookedAt: '2026-05-14T19:30:00',
        deductedIngredients: [
            { name: '돼지고기 삼겹살', deducted: 200, unit: 'g' },
            { name: '김치', deducted: 300, unit: 'g' },
            { name: '두부', deducted: 100, unit: 'g' },
        ],
    },
    {
        historyId: 2,
        recipeName: '계란말이',
        cookedAt: '2026-05-13T12:00:00',
        deductedIngredients: [
            { name: '계란', deducted: 3, unit: '개' },
            { name: '대파', deducted: 20, unit: 'g' },
        ],
    },
    {
        historyId: 3,
        recipeName: '제육볶음',
        cookedAt: '2026-05-12T18:00:00',
        deductedIngredients: [
            { name: '돼지고기 목살', deducted: 300, unit: 'g' },
            { name: '양파', deducted: 100, unit: 'g' },
        ],
    },
];

export default function HistoryPage() {
    const [history] = useState(MOCK_HISTORY);

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
                                key={item.historyId}
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

                                <div>
                                    <p className="text-sm text-gray-500 mb-2">차감된 재료:</p>
                                    <div className="flex flex-wrap gap-2">
                                        {item.deductedIngredients.map((ing, idx) => (
                                            <span
                                                key={idx}
                                                className="px-3 py-1 bg-red-50 text-red-600 text-xs rounded-full font-medium"
                                            >
                        {ing.name} -{ing.deducted}{ing.unit}
                      </span>
                                        ))}
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