import { useState, useEffect } from 'react';
import { Clock, ChefHat, Sparkles, Zap, Search } from 'lucide-react';
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
    const [quickTime, setQuickTime] = useState(null);
    const [refreshKey, setRefreshKey] = useState(0);

    useEffect(() => {
        const load = async () => {
            try {
                if (mode === 'makeable') {
                    const data = await getRecommendedRecipes();
                    setRecipes(data.map((r) => ({ ...r, canMake: true })));
                } else {
                    const [all, rec] = await Promise.all([getRecipes(), getRecommendedRecipes()]);
                    const makeableIds = new Set(rec.map((r) => r.id));
                    setRecipes(all.map((r) => ({ ...r, canMake: makeableIds.has(r.id) })));
                }
            } catch (err) {
                console.error('레시피 불러오기 실패:', err);
            }
        };
        load();
    }, [mode, refreshKey]);

    const handleCook = () => {
        setRefreshKey((k) => k + 1);
        setSelectedRecipe(null);
    };

    const filtered = recipes.filter((r) => {
        const matchDifficulty = selectedDifficulty === '전체' || r.difficulty === selectedDifficulty;
        const matchKeyword = r.name.includes(keyword);
        const matchTime = quickTime === null || r.estimatedTime <= quickTime;
        return matchDifficulty && matchKeyword && matchTime;
    });

    const QUICK_CARDS = [
        {
            Icon: ChefHat, label: '간단 요리', offset: 'mb-5',
            active: selectedDifficulty === 'easy',
            color: 'rgba(56,189,248,0.25)',
            activeColor: 'rgba(56,189,248,0.45)',
            onClick: () => { setSelectedDifficulty('easy'); setMode('all'); setQuickTime(null); },
        },
        {
            Icon: Sparkles, label: '재료 추천', offset: 'mb-0',
            active: mode === 'makeable',
            color: 'rgba(96,165,250,0.25)',
            activeColor: 'rgba(96,165,250,0.45)',
            onClick: () => { setMode('makeable'); setSelectedDifficulty('전체'); setQuickTime(null); },
        },
        {
            Icon: Zap, label: '빠른 레시피', offset: 'mb-8',
            active: quickTime !== null,
            color: 'rgba(147,197,253,0.25)',
            activeColor: 'rgba(147,197,253,0.45)',
            onClick: () => { setQuickTime(20); setMode('all'); setSelectedDifficulty('전체'); },
        },
    ];

    return (
        <div className="p-8">
            <div className="max-w-6xl mx-auto">
                {/* 헤더 */}
                {/* 히어로 배너 */}
                <div
                    className="relative overflow-hidden rounded-3xl px-10 py-10 mb-8 border border-blue-200/70 shadow-lg shadow-blue-100/60 flex items-center justify-between"
                    style={{ background: 'linear-gradient(135deg, #cfe8ff 0%, #dbeafe 50%, #f0f7ff 100%)' }}
                >
                    {/* 오로라 블롭 레이어 (밝은 톤) */}
                    <div className="absolute z-0 pointer-events-none" style={{
                        top: '-80px', left: '-40px', width: '320px', height: '320px', borderRadius: '50%',
                        background: 'radial-gradient(circle, rgba(56,189,248,0.40) 0%, transparent 70%)',
                        filter: 'blur(52px)',
                        animation: 'aurora-blob-1 20s ease-in-out infinite',
                    }} />
                    <div className="absolute z-0 pointer-events-none" style={{
                        top: '0px', right: '-40px', width: '300px', height: '300px', borderRadius: '50%',
                        background: 'radial-gradient(circle, rgba(96,165,250,0.38) 0%, transparent 70%)',
                        filter: 'blur(56px)',
                        animation: 'aurora-blob-2 25s ease-in-out infinite',
                    }} />
                    <div className="absolute z-0 pointer-events-none" style={{
                        bottom: '-70px', left: '38%', width: '280px', height: '280px', borderRadius: '50%',
                        background: 'radial-gradient(circle, rgba(147,197,253,0.38) 0%, transparent 70%)',
                        filter: 'blur(50px)',
                        animation: 'aurora-blob-3 18s ease-in-out infinite',
                    }} />

                    {/* 왼쪽 텍스트 */}
                    <div className="relative z-10">
                        <div className="inline-flex items-center gap-1.5 rounded-full px-3 py-1 mb-4 bg-white/70 backdrop-blur border border-blue-100">
                            <span className="w-1.5 h-1.5 rounded-full" style={{ background: '#10b981' }} />
                            <p className="text-toss-blue text-xs font-semibold tracking-wide">냉장고 속 재료로 만드는</p>
                        </div>
                        <h1 className="text-blue-950 font-extrabold leading-[1.2] tracking-tight mb-3" style={{ fontSize: '2rem' }}>
                            오늘은 뭘<br />만들어볼까요?
                        </h1>
                        <p className="text-gray-500 text-sm leading-relaxed">
                            보유한 재료로 바로 만들 수 있는<br />레시피를 찾아드려요
                        </p>
                    </div>

                    {/* 오른쪽 퀵 필터 카드 */}
                    <div className="relative z-10 flex items-end gap-3 mr-2">
                        {QUICK_CARDS.map((item) => (
                            <button
                                key={item.label}
                                onClick={item.onClick}
                                className={`${item.offset} flex flex-col items-center justify-center w-[76px] rounded-2xl gap-2.5 transition-all cursor-pointer pt-4 pb-3.5 backdrop-blur`}
                                style={{
                                    background: item.active ? 'rgba(255,255,255,0.95)' : 'rgba(255,255,255,0.6)',
                                    border: item.active ? '1px solid rgba(49,130,246,0.45)' : '1px solid rgba(191,219,254,0.8)',
                                    boxShadow: item.active ? '0 6px 18px rgba(49,130,246,0.18)' : '0 2px 8px rgba(15,23,42,0.04)',
                                    transform: item.active ? 'scale(1.06)' : undefined,
                                }}
                            >
                                <div className="w-9 h-9 rounded-xl flex items-center justify-center" style={{
                                    background: item.active ? item.activeColor : item.color,
                                }}>
                                    <item.Icon size={18} color={item.active ? '#1b64da' : '#3182f6'} strokeWidth={1.8} />
                                </div>
                                <span className="text-[11px] font-semibold leading-none" style={{ color: item.active ? '#1b64da' : 'rgba(71,85,105,0.9)' }}>{item.label}</span>
                            </button>
                        ))}
                    </div>
                </div>

                <div className="flex items-center justify-between mb-8">
                    <div>
                        <p className="text-sm text-gray-400">{filtered.length}개의 레시피</p>
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
                                    {recipe.canMake ? (
                                        <span className="text-xs font-medium px-2 py-0.5 rounded-full bg-green-50 text-green-600">
                                            지금 만들 수 있음
                                        </span>
                                    ) : (
                                        <span className="text-xs text-toss-blue opacity-0 group-hover:opacity-100 transition-opacity font-medium">
                                            레시피 보기 →
                                        </span>
                                    )}
                                </div>
                            </div>
                        ))}
                    </div>
                )}
            </div>

            <RecipeDetailModal recipe={selectedRecipe} onClose={() => setSelectedRecipe(null)} onCook={handleCook} />
        </div>
    );
}
