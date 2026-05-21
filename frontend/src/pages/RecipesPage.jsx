import { useState, useEffect } from 'react';
import { Clock, Users, ChefHat, Search } from 'lucide-react';
import { getRecipes, getRecipeDetail, getRecommendedRecipes } from '../api/recipe';

const difficultyColor = {
    'easy': 'bg-green-100 text-green-700',
    'medium': 'bg-yellow-100 text-yellow-700',
    'hard': 'bg-red-100 text-red-700',
};

const difficultyLabel = {
    'easy': '쉬움',
    'medium': '보통',
    'hard': '어려움',
};

function RecipeDetailModal({ recipe, onClose }) {
    const [detail, setDetail] = useState(null);

    useEffect(() => {
        if (!recipe) return;
        const fetchDetail = async () => {
            try {
                const data = await getRecipeDetail(recipe.id);
                setDetail(data);
            } catch (err) {
                console.error('레시피 상세 불러오기 실패:', err);
            }
        };
        fetchDetail();
    }, [recipe]);

    if (!recipe) return null;

    return (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[90vh] overflow-hidden flex flex-col">
                <div className="flex items-center justify-between px-6 py-4 border-b border-gray-200 bg-gradient-to-r from-blue-50 to-white">
                    <h2 className="text-2xl font-bold text-gray-900 flex items-center gap-2">
                        <ChefHat className="w-7 h-7 text-blue-600" />
                        {recipe.name}
                    </h2>
                    <button onClick={onClose} className="text-gray-400 hover:text-gray-600 transition-colors">
                        ✕
                    </button>
                </div>

                <div className="flex-1 overflow-y-auto p-6">
                    <div className="flex items-center gap-4 mb-6 text-sm text-gray-600">
                        <div className="flex items-center gap-1">
                            <Clock className="w-4 h-4" />
                            <span>{recipe.estimatedTime}분</span>
                        </div>
                        <div className="flex items-center gap-1">
                            <Users className="w-4 h-4" />
                            <span>2인분</span>
                        </div>
                        <span className={`px-3 py-1 rounded-full text-xs font-semibold ${difficultyColor[recipe.difficulty]}`}>
              {difficultyLabel[recipe.difficulty]}
            </span>
                    </div>

                    {detail ? (
                        <div>
                            <h3 className="font-semibold text-gray-800 mb-3">필요한 재료:</h3>
                            <div className="flex flex-wrap gap-2">
                                {detail.ingredients.map((ing) => (
                                    <span key={ing.ingredientId} className={`px-3 py-1 rounded-full text-sm ${
                                        ing.essential
                                            ? 'bg-blue-100 text-blue-700 font-semibold'
                                            : 'bg-gray-100 text-gray-700'
                                    }`}>
                                        {ing.ingredientName} {ing.requiredQty}{ing.unit}{ing.essential && ' *'}
                                    </span>
                                ))}
                            </div>
                            <p className="text-xs text-gray-400 mt-2">* 필수 재료</p>
                            <h3 className="font-semibold text-gray-800 mt-6 mb-3">조리 방법:</h3>
                            {detail.description ? (
                                <div className="space-y-2">
                                    {detail.description.split('\n').filter(Boolean).map((step, i) => (
                                        <p key={i} className="text-sm text-gray-700 leading-relaxed">{step}</p>
                                    ))}
                                </div>
                            ) : (
                                <p className="text-sm text-gray-400">조리 방법 정보가 없습니다.</p>
                            )}
                        </div>
                    ) : (
                        <p className="text-gray-400 text-sm">불러오는 중...</p>
                    )}
                </div>

                <div className="px-6 py-4 bg-gray-50 border-t border-gray-200">
                    <button onClick={onClose} className="w-full py-2.5 text-white bg-blue-600 rounded-lg hover:bg-blue-700 transition-colors font-medium">
                        닫기
                    </button>
                </div>
            </div>
        </div>
    );
}

export default function RecipesPage() {
    const [recipes, setRecipes] = useState([]);
    const [selectedDifficulty, setSelectedDifficulty] = useState('전체');
    const [keyword, setKeyword] = useState('');
    const [selectedRecipe, setSelectedRecipe] = useState(null);
    const [mode, setMode] = useState('all'); // 'all' | 'makeable'

    useEffect(() => {
        const fetchRecipes = async () => {
            try {
                const data = mode === 'makeable'
                    ? await getRecommendedRecipes()
                    : await getRecipes();
                setRecipes(data);
            } catch (err) {
                console.error('레시피 불러오기 실패:', err);
            }
        };
        fetchRecipes();
    }, [mode]);

    const filtered = recipes.filter((r) => {
        const matchDifficulty = selectedDifficulty === '전체' || r.difficulty === selectedDifficulty;
        const matchKeyword = r.name.includes(keyword);
        return matchDifficulty && matchKeyword;
    });

    return (
        <div className="min-h-screen bg-gradient-to-br from-gray-100 via-gray-50 to-white p-8">
            <div className="max-w-6xl mx-auto">
                <h1 className="text-4xl font-bold text-gray-800 mb-8">🍳 레시피 목록</h1>

                {/* 필터 */}
                <div className="flex items-center gap-4 mb-6">
                    <div className="relative flex-1 max-w-sm">
                        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
                        <input
                            type="text"
                            value={keyword}
                            onChange={(e) => setKeyword(e.target.value)}
                            placeholder="레시피 검색..."
                            className="w-full pl-9 pr-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 outline-none"
                        />
                    </div>
                    {/* 전체 / 지금 만들 수 있는 토글 */}
                    <div className="flex gap-1 bg-gray-100 rounded-lg p-1">
                        {[
                            { label: '전체', value: 'all' },
                            { label: '지금 만들 수 있는', value: 'makeable' },
                        ].map((m) => (
                            <button
                                key={m.value}
                                onClick={() => setMode(m.value)}
                                className={`px-4 py-2 rounded-md text-sm font-medium transition-colors ${
                                    mode === m.value
                                        ? 'bg-white text-blue-600 shadow-sm'
                                        : 'text-gray-500 hover:text-gray-700'
                                }`}
                            >
                                {m.label}
                            </button>
                        ))}
                    </div>
                    <div className="flex gap-2">
                        {[
                            { label: '전체', value: '전체' },
                            { label: '쉬움', value: 'easy' },
                            { label: '보통', value: 'medium' },
                            { label: '어려움', value: 'hard' },
                        ].map((d) => (
                            <button
                                key={d.value}
                                onClick={() => setSelectedDifficulty(d.value)}
                                className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                    selectedDifficulty === d.value
                                        ? 'bg-blue-600 text-white'
                                        : 'bg-white text-gray-600 border border-gray-300 hover:border-blue-300'
                                }`}
                            >
                                {d.label}
                            </button>
                        ))}
                    </div>
                </div>

                {/* 레시피 목록 */}
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {filtered.map((recipe) => (
                        <div
                            key={recipe.id}
                            onClick={() => setSelectedRecipe(recipe)}
                            className="bg-white rounded-xl border-2 border-gray-200 p-5 hover:border-blue-300 hover:shadow-lg transition-all cursor-pointer"
                        >
                            <div className="flex items-start justify-between mb-3">
                                <h3 className="text-xl font-bold text-gray-900">{recipe.name}</h3>
                                <span className={`px-2 py-1 rounded-full text-xs font-semibold ${difficultyColor[recipe.difficulty]}`}>
                  {difficultyLabel[recipe.difficulty]}
                </span>
                            </div>
                            <div className="flex items-center gap-4 text-sm text-gray-500">
                                <div className="flex items-center gap-1">
                                    <Clock className="w-4 h-4" />
                                    <span>{recipe.estimatedTime}분</span>
                                </div>
                            </div>
                        </div>
                    ))}
                </div>

                {filtered.length === 0 && (
                    <div className="text-center py-20 text-gray-400">
                        <ChefHat className="w-16 h-16 mx-auto mb-4 opacity-30" />
                        <p className="text-lg">검색 결과가 없어요</p>
                    </div>
                )}
            </div>

            <RecipeDetailModal recipe={selectedRecipe} onClose={() => setSelectedRecipe(null)} />
        </div>
    );
}