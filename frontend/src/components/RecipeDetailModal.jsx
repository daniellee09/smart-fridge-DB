import { useState, useEffect } from 'react';
import { Clock, ChefHat, X } from 'lucide-react';
import { getRecipeDetail, cookRecipe } from '../api/recipe';
import RecipeSteps from './RecipeSteps';

export const difficultyLabel = { easy: '쉬움', medium: '보통', hard: '어려움' };

export const difficultyBadge = {
    easy: 'bg-green-50 text-green-600',
    medium: 'bg-amber-50 text-amber-600',
    hard: 'bg-red-50 text-red-600',
};

export default function RecipeDetailModal({ recipe, onClose, onCook }) {
    const [detail, setDetail] = useState(null);
    const [showCookConfirm, setShowCookConfirm] = useState(false);
    const [cooking, setCooking] = useState(false);

    useEffect(() => {
        if (!recipe) return;
        setDetail(null);
        getRecipeDetail(recipe.id)
            .then(setDetail)
            .catch((err) => console.error('레시피 상세 불러오기 실패:', err));
    }, [recipe]);

    if (!recipe) return null;

    const essentialIngredients = detail?.ingredients.filter((i) => i.essential) ?? [];
    const canCook = essentialIngredients.length > 0 &&
        essentialIngredients.every((i) => Number(i.fridgeQty) >= Number(i.requiredQty));
    const missingEssentials = essentialIngredients.filter(
        (i) => Number(i.fridgeQty) < Number(i.requiredQty)
    );

    const getIngredientStyle = (ing) => {
        if (!ing.essential) return 'bg-gray-100 text-gray-600';
        if (Number(ing.fridgeQty) >= Number(ing.requiredQty)) return 'bg-green-50 text-green-700 font-medium';
        if (Number(ing.fridgeQty) > 0) return 'bg-amber-50 text-amber-700 font-medium';
        return 'bg-red-50 text-red-600 font-medium';
    };

    const handleCook = async () => {
        setCooking(true);
        try {
            await cookRecipe(detail.id);
            setShowCookConfirm(false);
            onCook?.();
            onClose();
            alert('요리 완료! 재고가 자동으로 차감됐어요.');
        } catch (err) {
            console.error('요리 완료 실패:', err);
            alert('요리 완료 처리에 실패했어요. 재고가 부족할 수 있어요.');
        } finally {
            setCooking(false);
        }
    };

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
                                            className={`px-3 py-1.5 rounded-xl text-sm ${getIngredientStyle(ing)}`}
                                        >
                                            {ing.ingredientName} {ing.requiredQty}{ing.unit}
                                            {ing.essential && (
                                                <span className="ml-1 opacity-70 text-xs">
                                                    (보유 {ing.fridgeQty}{ing.unit})
                                                </span>
                                            )}
                                        </span>
                                    ))}
                                </div>
                                <p className="text-xs text-gray-400 mt-2">
                                    필수 재료: <span className="text-green-600">■</span> 충분&nbsp;
                                    <span className="text-amber-500">■</span> 부족&nbsp;
                                    <span className="text-red-500">■</span> 없음
                                </p>
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

                {/* 하단 버튼 */}
                <div className="px-6 py-4 border-t border-gray-100 space-y-2">
                    {onCook && detail && (
                        canCook ? (
                            <button
                                onClick={() => setShowCookConfirm(true)}
                                className="w-full py-2.5 bg-green-500 hover:bg-green-600 text-white text-sm font-medium rounded-xl transition-colors flex items-center justify-center gap-2"
                            >
                                <ChefHat className="w-4 h-4" />
                                요리 완료
                            </button>
                        ) : (
                            <div>
                                <button
                                    disabled
                                    className="w-full py-2.5 bg-gray-100 text-gray-400 text-sm font-medium rounded-xl cursor-not-allowed"
                                >
                                    요리 완료 (재료 부족)
                                </button>
                                {missingEssentials.length > 0 && (
                                    <p className="text-xs text-red-500 mt-1.5 text-center">
                                        부족: {missingEssentials.map((i) => `${i.ingredientName} (필요 ${i.requiredQty}${i.unit}, 보유 ${i.fridgeQty}${i.unit})`).join(', ')}
                                    </p>
                                )}
                            </div>
                        )
                    )}
                    <button
                        onClick={onClose}
                        className="w-full py-2.5 bg-toss-blue hover:bg-toss-blue-hover text-white text-sm font-medium rounded-xl transition-colors"
                    >
                        닫기
                    </button>
                </div>
            </div>

            {/* 요리 완료 확인 다이얼로그 */}
            {showCookConfirm && (
                <div className="fixed inset-0 bg-black/40 flex items-center justify-center z-[60] p-4">
                    <div className="bg-white rounded-2xl shadow-xl p-6 max-w-sm w-full">
                        <div className="flex items-center gap-3 mb-3">
                            <div className="p-2 bg-green-50 rounded-xl">
                                <ChefHat className="w-5 h-5 text-green-600" />
                            </div>
                            <h3 className="font-bold text-gray-900">요리 완료</h3>
                        </div>
                        <p className="text-sm text-gray-500 mb-6">
                            요리를 완료할까요? 사용한 재료가 자동으로 차감돼요.
                        </p>
                        <div className="flex gap-3">
                            <button
                                onClick={() => setShowCookConfirm(false)}
                                disabled={cooking}
                                className="flex-1 py-2.5 text-sm font-medium text-gray-600 bg-gray-100 hover:bg-gray-200 rounded-xl transition-colors disabled:opacity-50"
                            >
                                취소
                            </button>
                            <button
                                onClick={handleCook}
                                disabled={cooking}
                                className="flex-1 py-2.5 text-sm font-medium text-white bg-green-500 hover:bg-green-600 rounded-xl transition-colors disabled:opacity-50"
                            >
                                {cooking ? '처리 중...' : '요리 완료'}
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
}
