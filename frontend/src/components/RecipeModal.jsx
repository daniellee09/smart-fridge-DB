import { useState, useEffect } from 'react';
import { X, Clock, ChefHat } from 'lucide-react';
import { getRecommendedRecipes, getRecipeDetail, cookRecipe } from '../api/recipe';

export function RecipeModal({ isOpen, onClose, ingredient, onCook }) {
    const [recipes, setRecipes] = useState([]);
    const [selectedRecipe, setSelectedRecipe] = useState(null);
    const [loading, setLoading] = useState(false);

    useEffect(() => {
        if (!isOpen) return;
        const fetchRecipes = async () => {
            setLoading(true);
            try {
                const data = await getRecommendedRecipes();
                setRecipes(data);
            } catch (err) {
                console.error('추천 레시피 불러오기 실패:', err);
            } finally {
                setLoading(false);
            }
        };
        fetchRecipes();
    }, [isOpen]);

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

    const difficultyLabel = {
        'easy': '쉬움',
        'medium': '보통',
        'hard': '어려움',
    };

    return (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-4xl max-h-[90vh] overflow-hidden flex flex-col">
                <div className="flex items-center justify-between px-6 py-4 border-b border-gray-200 bg-gradient-to-r from-blue-50 to-white">
                    <div>
                        <h2 className="text-2xl font-bold text-gray-900 flex items-center gap-2">
                            <ChefHat className="w-7 h-7 text-blue-600" />
                            추천 레시피
                        </h2>
                        <p className="text-sm text-gray-600 mt-1">냉장고 재료로 만들 수 있는 레시피예요</p>
                    </div>
                    <button onClick={onClose} className="text-gray-400 hover:text-gray-600 transition-colors">
                        <X className="w-6 h-6" />
                    </button>
                </div>

                <div className="flex-1 overflow-y-auto p-6">
                    {loading ? (
                        <div className="text-center py-20 text-gray-400">불러오는 중...</div>
                    ) : selectedRecipe ? (
                        // 레시피 상세
                        <div>
                            <button
                                onClick={() => setSelectedRecipe(null)}
                                className="mb-4 text-sm text-blue-600 hover:underline"
                            >
                                ← 목록으로
                            </button>
                            <h3 className="text-2xl font-bold text-gray-900 mb-3">{selectedRecipe.name}</h3>
                            <div className="flex items-center gap-4 mb-6 text-sm text-gray-600">
                                <div className="flex items-center gap-1">
                                    <Clock className="w-4 h-4" />
                                    <span>{selectedRecipe.estimatedTime}분</span>
                                </div>
                                <span className="px-2 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-700">
                  {difficultyLabel[selectedRecipe.difficulty]}
                </span>
                            </div>

                            <div className="mb-6">
                                <h4 className="font-semibold text-gray-800 mb-3">필요한 재료:</h4>
                                <div className="flex flex-wrap gap-2">
                                    {selectedRecipe.ingredients.map((ing, idx) => (
                                        <span key={ing.ingredientId} className={`px-3 py-1 rounded-full text-sm ${
                                            ing.essential
                                                ? 'bg-blue-100 text-blue-700 font-semibold'
                                                : 'bg-gray-100 text-gray-700'
                                        }`}>
                      {ing.ingredientName} {ing.requiredQty}{ing.unit}
                                            {ing.essential && ' *'}
                    </span>
                                    ))}
                                </div>
                                <p className="text-xs text-gray-400 mt-2">* 필수 재료</p>
                            </div>

                            <button
                                onClick={() => handleCook(selectedRecipe.id)}
                                className="w-full py-3 bg-green-500 hover:bg-green-600 text-white font-semibold rounded-xl transition-colors flex items-center justify-center gap-2"
                            >
                                <ChefHat className="w-5 h-5" />
                                요리 완료
                            </button>
                        </div>
                    ) : (
                        // 레시피 목록
                        recipes.length === 0 ? (
                            <div className="text-center py-20 text-gray-400">
                                <ChefHat className="w-16 h-16 mx-auto mb-4 opacity-30" />
                                <p className="text-lg">만들 수 있는 레시피가 없어요</p>
                                <p className="text-sm mt-2">필수 재료를 냉장고에 추가해보세요!</p>
                            </div>
                        ) : (
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                {recipes.map((recipe) => (
                                    <div
                                        key={recipe.id}
                                        onClick={() => handleRecipeClick(recipe)}
                                        className="bg-white border-2 border-gray-200 rounded-xl p-5 hover:border-blue-300 hover:shadow-lg transition-all cursor-pointer"
                                    >
                                        <h3 className="text-xl font-bold text-gray-900 mb-2">{recipe.name}</h3>
                                        <div className="flex items-center gap-3 text-sm text-gray-600">
                                            <div className="flex items-center gap-1">
                                                <Clock className="w-4 h-4" />
                                                <span>{recipe.estimatedTime}분</span>
                                            </div>
                                            <span className="px-2 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-700">
                        {difficultyLabel[recipe.difficulty]}
                      </span>
                                        </div>
                                    </div>
                                ))}
                            </div>
                        )
                    )}
                </div>

                <div className="px-6 py-4 bg-gray-50 border-t border-gray-200">
                    <button onClick={onClose} className="w-full px-5 py-2.5 text-white bg-blue-600 rounded-lg hover:bg-blue-700 transition-colors font-medium">
                        닫기
                    </button>
                </div>
            </div>
        </div>
    );
}