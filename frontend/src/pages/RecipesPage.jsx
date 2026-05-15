import { useState } from 'react';
import { Clock, Users, ChefHat, Search } from 'lucide-react';

// 백엔드 연동 전 Mock 레시피 데이터
const MOCK_RECIPES = [
    {
        recipeId: 1,
        recipeName: '김치찌개',
        difficulty: '쉬움',
        estimatedTime: 30,
        ingredients: [
            { name: '돼지고기 삼겹살', requiredQty: 200, unit: 'g', isEssential: true },
            { name: '김치', requiredQty: 300, unit: 'g', isEssential: true },
            { name: '두부', requiredQty: 100, unit: 'g', isEssential: false },
            { name: '대파', requiredQty: 50, unit: 'g', isEssential: false },
            { name: '마늘', requiredQty: 10, unit: 'g', isEssential: false },
        ],
        steps: [
            '김치를 먹기 좋은 크기로 썰어주세요.',
            '삼겹살을 한입 크기로 썰어주세요.',
            '냄비에 김치와 고기를 넣고 볶아주세요.',
            '물을 붓고 끓여주세요.',
            '두부와 양념을 넣고 더 끓이면 완성!',
        ],
    },
    {
        recipeId: 2,
        recipeName: '제육볶음',
        difficulty: '보통',
        estimatedTime: 20,
        ingredients: [
            { name: '돼지고기 목살', requiredQty: 300, unit: 'g', isEssential: true },
            { name: '양파', requiredQty: 100, unit: 'g', isEssential: true },
            { name: '당근', requiredQty: 50, unit: 'g', isEssential: false },
            { name: '간장', requiredQty: 20, unit: 'g', isEssential: false },
            { name: '참기름', requiredQty: 5, unit: 'g', isEssential: false },
        ],
        steps: [
            '고기와 야채를 먹기 좋게 썰어주세요.',
            '팬에 기름을 두르고 고기를 먼저 볶아주세요.',
            '야채를 넣고 함께 볶아주세요.',
            '간장, 설탕으로 간을 맞추고 참기름을 넣어 완성!',
        ],
    },
    {
        recipeId: 3,
        recipeName: '계란말이',
        difficulty: '쉬움',
        estimatedTime: 10,
        ingredients: [
            { name: '계란', requiredQty: 3, unit: '개', isEssential: true },
            { name: '대파', requiredQty: 20, unit: 'g', isEssential: false },
            { name: '소금', requiredQty: 2, unit: 'g', isEssential: false },
        ],
        steps: [
            '계란을 풀고 소금으로 간을 해주세요.',
            '대파를 잘게 썰어 계란물에 넣어주세요.',
            '팬에 기름을 두르고 계란물을 부어주세요.',
            '돌돌 말아가며 익히면 완성!',
        ],
    },
    {
        recipeId: 4,
        recipeName: '된장찌개',
        difficulty: '쉬움',
        estimatedTime: 25,
        ingredients: [
            { name: '두부', requiredQty: 150, unit: 'g', isEssential: true },
            { name: '양파', requiredQty: 80, unit: 'g', isEssential: true },
            { name: '대파', requiredQty: 30, unit: 'g', isEssential: false },
            { name: '마늘', requiredQty: 10, unit: 'g', isEssential: false },
        ],
        steps: [
            '두부와 야채를 썰어주세요.',
            '냄비에 물을 끓이고 된장을 풀어주세요.',
            '야채를 넣고 끓여주세요.',
            '두부를 넣고 한소끔 더 끓이면 완성!',
        ],
    },
    {
        recipeId: 5,
        recipeName: '고등어구이',
        difficulty: '쉬움',
        estimatedTime: 25,
        ingredients: [
            { name: '고등어', requiredQty: 300, unit: 'g', isEssential: true },
            { name: '소금', requiredQty: 5, unit: 'g', isEssential: false },
            { name: '마늘', requiredQty: 10, unit: 'g', isEssential: false },
        ],
        steps: [
            '고등어를 깨끗이 손질해주세요.',
            '소금으로 밑간을 해주세요.',
            '팬에 기름을 두르고 구워주세요.',
            '앞뒤로 노릇하게 구우면 완성!',
        ],
    },
    {
        recipeId: 6,
        recipeName: '새우볶음밥',
        difficulty: '보통',
        estimatedTime: 15,
        ingredients: [
            { name: '새우', requiredQty: 150, unit: 'g', isEssential: true },
            { name: '쌀', requiredQty: 200, unit: 'g', isEssential: true },
            { name: '계란', requiredQty: 2, unit: '개', isEssential: true },
            { name: '간장', requiredQty: 15, unit: 'g', isEssential: false },
            { name: '참기름', requiredQty: 5, unit: 'g', isEssential: false },
        ],
        steps: [
            '새우를 손질하고 계란을 풀어주세요.',
            '팬에 기름을 두르고 계란을 스크램블해주세요.',
            '새우를 넣고 볶아주세요.',
            '밥을 넣고 간장으로 간을 맞추면 완성!',
        ],
    },
];

const difficultyColor = {
    '쉬움': 'bg-green-100 text-green-700',
    '보통': 'bg-yellow-100 text-yellow-700',
    '어려움': 'bg-red-100 text-red-700',
};

function RecipeDetailModal({ recipe, onClose }) {
    if (!recipe) return null;

    return (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[90vh] overflow-hidden flex flex-col">
                <div className="flex items-center justify-between px-6 py-4 border-b border-gray-200 bg-gradient-to-r from-blue-50 to-white">
                    <h2 className="text-2xl font-bold text-gray-900 flex items-center gap-2">
                        <ChefHat className="w-7 h-7 text-blue-600" />
                        {recipe.recipeName}
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
              {recipe.difficulty}
            </span>
                    </div>

                    <div className="mb-6">
                        <h3 className="font-semibold text-gray-800 mb-3">필요한 재료:</h3>
                        <div className="flex flex-wrap gap-2">
                            {recipe.ingredients.map((ing, idx) => (
                                <span key={idx} className={`px-3 py-1 rounded-full text-sm ${
                                    ing.isEssential
                                        ? 'bg-blue-100 text-blue-700 font-semibold'
                                        : 'bg-gray-100 text-gray-700'
                                }`}>
                  {ing.name} {ing.requiredQty}{ing.unit}
                                    {ing.isEssential && ' *'}
                </span>
                            ))}
                        </div>
                        <p className="text-xs text-gray-400 mt-2">* 필수 재료</p>
                    </div>

                    <div>
                        <h3 className="font-semibold text-gray-800 mb-3">조리 순서:</h3>
                        <ol className="space-y-3">
                            {recipe.steps.map((step, idx) => (
                                <li key={idx} className="flex gap-3 text-sm text-gray-700">
                                    <span className="font-bold text-blue-600 flex-shrink-0">{idx + 1}.</span>
                                    <span>{step}</span>
                                </li>
                            ))}
                        </ol>
                    </div>
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
    const [selectedDifficulty, setSelectedDifficulty] = useState('전체');
    const [keyword, setKeyword] = useState('');
    const [selectedRecipe, setSelectedRecipe] = useState(null);

    const filtered = MOCK_RECIPES.filter((r) => {
        const matchDifficulty = selectedDifficulty === '전체' || r.difficulty === selectedDifficulty;
        const matchKeyword = r.recipeName.includes(keyword);
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
                    <div className="flex gap-2">
                        {['전체', '쉬움', '보통', '어려움'].map((d) => (
                            <button
                                key={d}
                                onClick={() => setSelectedDifficulty(d)}
                                className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                    selectedDifficulty === d
                                        ? 'bg-blue-600 text-white'
                                        : 'bg-white text-gray-600 border border-gray-300 hover:border-blue-300'
                                }`}
                            >
                                {d}
                            </button>
                        ))}
                    </div>
                </div>

                {/* 레시피 목록 */}
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {filtered.map((recipe) => (
                        <div
                            key={recipe.recipeId}
                            onClick={() => setSelectedRecipe(recipe)}
                            className="bg-white rounded-xl border-2 border-gray-200 p-5 hover:border-blue-300 hover:shadow-lg transition-all cursor-pointer"
                        >
                            <div className="flex items-start justify-between mb-3">
                                <h3 className="text-xl font-bold text-gray-900">{recipe.recipeName}</h3>
                                <span className={`px-2 py-1 rounded-full text-xs font-semibold ${difficultyColor[recipe.difficulty]}`}>
                  {recipe.difficulty}
                </span>
                            </div>

                            <div className="flex items-center gap-4 mb-4 text-sm text-gray-500">
                                <div className="flex items-center gap-1">
                                    <Clock className="w-4 h-4" />
                                    <span>{recipe.estimatedTime}분</span>
                                </div>
                                <div className="flex items-center gap-1">
                                    <Users className="w-4 h-4" />
                                    <span>2인분</span>
                                </div>
                            </div>

                            <div className="flex flex-wrap gap-1">
                                {recipe.ingredients.filter((i) => i.isEssential).map((ing, idx) => (
                                    <span key={idx} className="px-2 py-0.5 bg-blue-50 text-blue-700 text-xs rounded-full">
                    {ing.name}
                  </span>
                                ))}
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