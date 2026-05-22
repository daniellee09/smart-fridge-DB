import { useState, useEffect } from 'react';
import { Clock, ChefHat, X } from 'lucide-react';
import { getRecipeDetail } from '../api/recipe';
import RecipeSteps from './RecipeSteps';

export const difficultyLabel = { easy: '쉬움', medium: '보통', hard: '어려움' };

export const difficultyBadge = {
    easy: 'bg-green-50 text-green-600',
    medium: 'bg-amber-50 text-amber-600',
    hard: 'bg-red-50 text-red-600',
};

export default function RecipeDetailModal({ recipe, onClose }) {
    const [detail, setDetail] = useState(null);

    useEffect(() => {
        if (!recipe) return;
        setDetail(null);
        getRecipeDetail(recipe.id)
            .then(setDetail)
            .catch((err) => console.error('레시피 상세 불러오기 실패:', err));
    }, [recipe]);

    if (!recipe) return null;

    return (
        <div className="fixed inset-0 bg-black/40 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[90vh] overflow-hidden flex flex-col">
                {/* 헤더 */}
                <div className="flex items-center gap-3 px-6 py-4 border-b border-gray-100">
                    <div className="p-2 bg-toss-blue/10 rounded-xl">
                        <ChefHat className="w-5 h-5 text-toss-blue" />
                    </div>
                    <div className="flex-1 min-w-0">
                        <h2 className="font-bold text-gray-900 truncate">{recipe.name}</h2>
                        <div className="flex items-center gap-3 mt-0.5 text-xs text-gray-400">
                            <span className="flex items-center gap-1"><Clock className="w-3.5 h-3.5" />{recipe.estimatedTime}분</span>
                            <span className={`px-2 py-0.5 rounded-full font-medium ${difficultyBadge[recipe.difficulty]}`}>
                                {difficultyLabel[recipe.difficulty]}
                            </span>
                        </div>
                    </div>
                    <button onClick={onClose} className="p-1.5 text-gray-400 hover:text-gray-600 hover:bg-gray-100 rounded-lg transition-colors">
                        <X className="w-5 h-5" />
                    </button>
                </div>

                {/* 본문 */}
                <div className="flex-1 overflow-y-auto p-6">
                    {detail ? (
                        <div className="space-y-6">
                            <div>
                                <h3 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-3">필요한 재료</h3>
                                <div className="flex flex-wrap gap-2">
                                    {detail.ingredients.map((ing) => (
                                        <span
                                            key={ing.ingredientId}
                                            className={`px-3 py-1.5 rounded-xl text-sm ${
                                                ing.essential
                                                    ? 'bg-toss-blue/10 text-toss-blue font-medium'
                                                    : 'bg-gray-100 text-gray-600'
                                            }`}
                                        >
                                            {ing.ingredientName} {ing.requiredQty}{ing.unit}{ing.essential && ' *'}
                                        </span>
                                    ))}
                                </div>
                                <p className="text-xs text-gray-400 mt-2">* 필수 재료</p>
                            </div>

                            <div>
                                <h3 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-3">조리 방법</h3>
                                <RecipeSteps description={detail.description} />
                            </div>
                        </div>
                    ) : (
                        <p className="text-sm text-gray-400 text-center py-12">불러오는 중...</p>
                    )}
                </div>

                <div className="px-6 py-4 border-t border-gray-100">
                    <button
                        onClick={onClose}
                        className="w-full py-2.5 bg-toss-blue hover:bg-toss-blue-hover text-white text-sm font-medium rounded-xl transition-colors"
                    >
                        닫기
                    </button>
                </div>
            </div>
        </div>
    );
}
