import { useState, useEffect } from 'react';
import { X, Clock, ChefHat, ChevronRight } from 'lucide-react';
import { getRecipesByIngredient, getRecipeDetail, cookRecipe } from '../api/recipe';
import RecipeSteps from './RecipeSteps';

const difficultyLabel = { easy: '쉬움', medium: '보통', hard: '어려움' };
const difficultyBadge = {
    easy: 'bg-green-50 text-green-600',
    medium: 'bg-amber-50 text-amber-600',
    hard: 'bg-red-50 text-red-600',
};

export function RecipeModal({ isOpen, onClose, ingredient, onCook }) {
    const [recipes, setRecipes] = useState([]);
    const [selectedRecipe, setSelectedRecipe] = useState(null);
    const [loading, setLoading] = useState(false);
    const [showCookConfirm, setShowCookConfirm] = useState(false);

    useEffect(() => {
        if (!isOpen || !ingredient) return;
        let cancelled = false;
        setLoading(true);
        setSelectedRecipe(null);
        setRecipes([]);
        getRecipesByIngredient(ingredient.ingredientId)
            .then((data) => { if (!cancelled) setRecipes(data); })
            .catch((err) => console.error('재료별 레시피 불러오기 실패:', err))
            .finally(() => { if (!cancelled) setLoading(false); });
        return () => { cancelled = true; };
    }, [isOpen, ingredient]);

    const handleRecipeClick = async (recipe) => {
        try {
            const detail = await getRecipeDetail(recipe.id);
            setSelectedRecipe(detail);
        } catch (err) {
            console.error('레시피 상세 불러오기 실패:', err);
        }
    };

    const handleCook = async (recipeId) => {
        try {
            await cookRecipe(recipeId);
            onCook();
            onClose();
            alert('요리 완료! 재고가 자동으로 차감됐어요.');
        } catch (err) {
            console.error('요리 완료 실패:', err);
            alert('요리 완료 처리에 실패했어요. 재고가 부족할 수 있어요.');
        }
    };

    if (!isOpen) return null;

    // selectedRecipe(레시피 상세)의 필수 재료 보유 여부 — 부족하면 요리 완료 버튼 비활성화
    const essentialIngredients = selectedRecipe?.ingredients?.filter((i) => i.essential) ?? [];
    const canCook = essentialIngredients.length > 0 &&
        essentialIngredients.every((i) => Number(i.fridgeQty) >= Number(i.requiredQty));
    const missingEssentials = essentialIngredients.filter(
        (i) => Number(i.fridgeQty) < Number(i.requiredQty)
    );

    const makeable = recipes.filter(r => r.canMake);
    const notMakeable = recipes.filter(r => !r.canMake);
    const displayList = makeable.length > 0 ? makeable : notMakeable.slice(0, 4);
    const showMissingBadges = makeable.length === 0 && notMakeable.length > 0;

    return (
        <div className="fixed inset-0 bg-black/40 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-3xl max-h-[90vh] overflow-hidden flex flex-col">

                {/* 헤더 */}
                <div className="flex items-center gap-3 px-6 py-4 border-b border-gray-100">
                    <div className="p-2 bg-toss-blue/10 rounded-xl">
                        <ChefHat className="w-5 h-5 text-toss-blue" />
                    </div>
                    <div className="flex-1 min-w-0">
                        <h2 className="font-bold text-gray-900 truncate">
                            {ingredient?.ingredientName}(으)로 만들 수 있는 레시피
                        </h2>
                        {showMissingBadges && (
                            <p className="text-xs text-amber-500 mt-0.5">
                                지금 바로 만들 수 있는 레시피가 없어요. 재료를 더 채워보세요!
                            </p>
                        )}
                    </div>
                    <button
                        onClick={onClose}
                        className="p-1.5 text-gray-400 hover:text-gray-600 hover:bg-gray-100 rounded-lg transition-colors"
                    >
                        <X className="w-5 h-5" />
                    </button>
                </div>

                {/* 본문 */}
                <div className="flex-1 overflow-y-auto p-6">
                    {loading ? (
                        <p className="text-center py-20 text-sm text-gray-400">불러오는 중...</p>

                    ) : selectedRecipe ? (
                        /* 레시피 상세 */
                        <div>
                            <button
                                onClick={() => setSelectedRecipe(null)}
                                className="mb-5 text-sm text-toss-blue hover:underline flex items-center gap-1"
                            >
                                ← 목록으로
                            </button>
                            <h3 className="text-xl font-bold text-gray-900 mb-2">{selectedRecipe.name}</h3>
                            <div className="flex items-center gap-3 mb-6">
                                <span className="flex items-center gap-1 text-xs text-gray-400">
                                    <Clock className="w-3.5 h-3.5" />{selectedRecipe.estimatedTime}분
                                </span>
                                <span className={`text-xs font-medium px-2.5 py-1 rounded-full ${difficultyBadge[selectedRecipe.difficulty]}`}>
                                    {difficultyLabel[selectedRecipe.difficulty]}
                                </span>
                            </div>

                            <div className="space-y-6">
                                <div>
                                    <h4 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-3">필요한 재료</h4>
                                    <div className="flex flex-wrap gap-2">
                                        {selectedRecipe.ingredients.map((ing) => (
                                            <span key={ing.ingredientId} className={`px-3 py-1.5 rounded-xl text-sm ${
                                                ing.essential
                                                    ? 'bg-toss-blue/10 text-toss-blue font-medium'
                                                    : 'bg-gray-100 text-gray-600'
                                            }`}>
                                                {ing.ingredientName} {ing.requiredQty}{ing.unit}{ing.essential && ' *'}
                                            </span>
                                        ))}
                                    </div>
                                    <p className="text-xs text-gray-400 mt-2">* 필수 재료</p>
                                </div>

                                <div>
                                    <h4 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-3">조리 방법</h4>
                                    <RecipeSteps description={selectedRecipe.description} />
                                </div>
                            </div>

                            {canCook ? (
                                <button
                                    onClick={() => setShowCookConfirm(true)}
                                    className="mt-8 w-full py-3 bg-green-500 hover:bg-green-600 text-white font-semibold rounded-xl transition-colors flex items-center justify-center gap-2"
                                >
                                    <ChefHat className="w-5 h-5" />
                                    요리 완료
                                </button>
                            ) : (
                                <div className="mt-8">
                                    <button
                                        disabled
                                        className="w-full py-3 bg-gray-100 text-gray-400 font-semibold rounded-xl cursor-not-allowed"
                                    >
                                        요리 완료 (재료 부족)
                                    </button>
                                    {missingEssentials.length > 0 && (
                                        <p className="text-xs text-red-500 mt-2 text-center">
                                            부족: {missingEssentials.map((i) => `${i.ingredientName} (필요 ${i.requiredQty}${i.unit}, 보유 ${i.fridgeQty}${i.unit})`).join(', ')}
                                        </p>
                                    )}
                                </div>
                            )}
                        </div>

                    ) : displayList.length === 0 ? (
                        /* 빈 상태 */
                        <div className="flex flex-col items-center justify-center py-20 text-gray-300">
                            <ChefHat className="w-14 h-14 mb-4" />
                            <p className="text-base font-medium text-gray-400">{ingredient?.ingredientName}이(가) 들어간 레시피가 없어요</p>
                            <p className="text-sm mt-1">다른 재료를 눌러보세요</p>
                        </div>

                    ) : (
                        /* 레시피 목록 */
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                            {displayList.map((recipe) => (
                                <div
                                    key={recipe.id}
                                    onClick={() => handleRecipeClick(recipe)}
                                    className="group bg-white border border-gray-100 shadow-sm rounded-2xl p-5 hover:shadow-md transition-all cursor-pointer"
                                >
                                    <div className="flex items-start justify-between mb-2">
                                        <h3 className="font-bold text-gray-900 flex-1 pr-2 leading-snug">{recipe.name}</h3>
                                        <span className={`flex-shrink-0 text-xs font-medium px-2.5 py-1 rounded-full ${difficultyBadge[recipe.difficulty]}`}>
                                            {difficultyLabel[recipe.difficulty]}
                                        </span>
                                    </div>
                                    <div className="flex items-center justify-between">
                                        <span className="flex items-center gap-1 text-xs text-gray-400">
                                            <Clock className="w-3.5 h-3.5" />{recipe.estimatedTime}분
                                        </span>
                                        <ChevronRight className="w-4 h-4 text-gray-200 group-hover:text-toss-blue transition-colors" />
                                    </div>
                                    {showMissingBadges && recipe.missingIngredients?.length > 0 && (
                                        <div className="flex flex-wrap gap-1 mt-3">
                                            {recipe.missingIngredients.map((name) => (
                                                <span key={name} className="px-2 py-0.5 rounded-full text-xs font-medium bg-red-50 text-red-500">
                                                    {name} 부족
                                                </span>
                                            ))}
                                        </div>
                                    )}
                                </div>
                            ))}
                        </div>
                    )}
                </div>

                {/* 푸터 */}
                <div className="px-6 py-4 border-t border-gray-100">
                    <button
                        onClick={onClose}
                        className="w-full py-2.5 text-white bg-toss-blue hover:bg-toss-blue-hover rounded-xl transition-colors font-medium text-sm"
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
                                className="flex-1 py-2.5 text-sm font-medium text-gray-600 bg-gray-100 hover:bg-gray-200 rounded-xl transition-colors"
                            >
                                취소
                            </button>
                            <button
                                onClick={() => { setShowCookConfirm(false); handleCook(selectedRecipe.id); }}
                                className="flex-1 py-2.5 text-sm font-medium text-white bg-green-500 hover:bg-green-600 rounded-xl transition-colors"
                            >
                                요리 완료
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
}
