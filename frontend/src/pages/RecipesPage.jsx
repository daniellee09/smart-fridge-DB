import { useState, useEffect } from 'react';
import { Clock, ChefHat, Search } from 'lucide-react';
import { getRecipes, getRecommendedRecipes } from '../api/recipe';
import RecipeDetailModal, { difficultyLabel, difficultyBadge } from '../components/RecipeDetailModal';

const DIFFICULTY_OPTIONS = [
    { label: '전체', value: '전체' },
    { label: '쉬움', value: 'easy' },
    { label: '보통', value: 'medium' },
    { label: '어려움', value: 'hard' },
];

export default function RecipesPage() {
    const [recipes, setRecipes] = useState([]);
    const [selectedDifficulty, setSelectedDifficulty] = useState('전체');
    const [keyword, setKeyword] = useState('');
    const [selectedRecipe, setSelectedRecipe] = useState(null);
    const [mode, setMode] = useState('all');

    useEffect(() => {
        const fetch = async () => {
            try {
                const data = mode === 'makeable' ? await getRecommendedRecipes() : await getRecipes();
                setRecipes(data);
            } catch (err) {
                console.error('레시피 불러오기 실패:', err);
            }
        };
        fetch();
    }, [mode]);

    const filtered = recipes.filter((r) => {
        const matchDifficulty = selectedDifficulty === '전체' || r.difficulty === selectedDifficulty;
        const matchKeyword = r.name.includes(keyword);
        return matchDifficulty && matchKeyword;
    });

    return (
        <div className="p-8">
            <div className="max-w-6xl mx-auto">
                {/* 헤더 */}
                <div className="flex items-center justify-between mb-8">
                    <div>
                        <h1 className="text-2xl font-bold text-gray-900">레시피</h1>
                        <p className="text-sm text-gray-400 mt-0.5">{filtered.length}개의 레시피</p>
                    </div>

                    {/* 전체 / 지금 만들 수 있는 토글 */}
                    <div className="flex gap-1 bg-gray-100 rounded-xl p-1">
                        {[{ label: '전체', value: 'all' }, { label: '지금 만들 수 있는', value: 'makeable' }].map((m) => (
                            <button
                                key={m.value}
                                onClick={() => setMode(m.value)}
                                className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                    mode === m.value
                                        ? 'bg-white text-toss-blue shadow-sm'
                                        : 'text-gray-500 hover:text-gray-700'
                                }`}
                            >
                                {m.label}
                            </button>
                        ))}
                    </div>
                </div>

                {/* 필터 */}
                <div className="flex items-center gap-3 mb-6">
                    <div className="relative flex-1 max-w-xs">
                        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-300" />
                        <input
                            type="text"
                            value={keyword}
                            onChange={(e) => setKeyword(e.target.value)}
                            placeholder="레시피 검색..."
                            className="w-full pl-9 pr-4 py-2.5 bg-white border border-gray-200 rounded-xl text-sm focus:ring-2 focus:ring-toss-blue/30 focus:border-toss-blue outline-none transition-all"
                        />
                    </div>

                    <div className="flex gap-2">
                        {DIFFICULTY_OPTIONS.map((d) => (
                            <button
                                key={d.value}
                                onClick={() => setSelectedDifficulty(d.value)}
                                className={`px-4 py-2.5 rounded-xl text-sm font-medium transition-colors ${
                                    selectedDifficulty === d.value
                                        ? 'bg-toss-blue text-white'
                                        : 'bg-white text-gray-500 border border-gray-200 hover:border-toss-blue/40'
                                }`}
                            >
                                {d.label}
                            </button>
                        ))}
                    </div>
                </div>

                {/* 레시피 목록 */}
                {filtered.length === 0 ? (
                    <div className="flex flex-col items-center justify-center py-24 text-gray-300">
                        <ChefHat className="w-14 h-14 mb-4" />
                        <p className="text-base font-medium text-gray-400">검색 결과가 없어요</p>
                    </div>
                ) : (
                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                        {filtered.map((recipe) => (
                            <div
                                key={recipe.id}
                                onClick={() => setSelectedRecipe(recipe)}
                                className="bg-white rounded-2xl shadow-sm border border-gray-50 p-5 hover:shadow-md transition-all cursor-pointer group"
                            >
                                <div className="flex items-start justify-between mb-3">
                                    <h3 className="font-bold text-gray-900 leading-snug flex-1 pr-2">{recipe.name}</h3>
                                    <span className={`flex-shrink-0 text-xs font-medium px-2.5 py-1 rounded-full ${difficultyBadge[recipe.difficulty]}`}>
                                        {difficultyLabel[recipe.difficulty]}
                                    </span>
                                </div>
                                <div className="flex items-center justify-between">
                                    <span className="flex items-center gap-1 text-xs text-gray-400">
                                        <Clock className="w-3.5 h-3.5" />
                                        {recipe.estimatedTime}분
                                    </span>
                                    <span className="text-xs text-toss-blue opacity-0 group-hover:opacity-100 transition-opacity font-medium">
                                        레시피 보기 →
                                    </span>
                                </div>
                            </div>
                        ))}
                    </div>
                )}
            </div>

            <RecipeDetailModal recipe={selectedRecipe} onClose={() => setSelectedRecipe(null)} />
        </div>
    );
}
