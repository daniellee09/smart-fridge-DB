import { useState, useEffect } from 'react';
import { Refrigerator, Package, Leaf, AlarmClock, AlertTriangle, CheckCircle, Clock, ChefHat, Snowflake, Droplet, Cloud, ArrowRight } from 'lucide-react';
import { expiryStatus } from '../utils/expiry';
import { getIngredientEmoji } from '../utils/ingredientEmoji';
import { getRecommendedRecipes } from '../api/recipe';
import { getCookHistory } from '../api/history';
import RecipeDetailModal, { difficultyLabel, difficultyBadge } from './RecipeDetailModal';

const STAT_CARDS = [
    { key: 'total',   label: '전체', Icon: Package,       cardBg: 'bg-blue-50/60',   numColor: 'text-toss-blue',  iconColor: 'bg-blue-100 text-toss-blue'  },
    { key: 'fresh',   label: '신선', Icon: Leaf,           cardBg: 'bg-green-50/60',  numColor: 'text-green-600',  iconColor: 'bg-green-100 text-green-600' },
    { key: 'soon',    label: '임박', Icon: AlarmClock,     cardBg: 'bg-amber-50/60',  numColor: 'text-amber-600',  iconColor: 'bg-amber-100 text-amber-600' },
    { key: 'expired', label: '만료', Icon: AlertTriangle,  cardBg: 'bg-red-50/60',    numColor: 'text-red-600',    iconColor: 'bg-red-100 text-red-600'     },
];

const STORAGE_TYPES = [
    { key: '냉동', label: '냉동실', Icon: Snowflake, bar: 'bg-sky-400',   text: 'text-sky-500' },
    { key: '냉장', label: '냉장실', Icon: Droplet,   bar: 'bg-toss-blue', text: 'text-toss-blue' },
    { key: '실온', label: '실온',   Icon: Cloud,     bar: 'bg-gray-400',  text: 'text-gray-400' },
];

const AVATAR_COLORS = [
    'bg-toss-blue/10 text-toss-blue',
    'bg-green-50 text-green-600',
    'bg-amber-50 text-amber-600',
    'bg-purple-50 text-purple-600',
    'bg-pink-50 text-pink-600',
];

function avatarColor(name) {
    const code = (name || '').charCodeAt(0) || 0;
    return AVATAR_COLORS[code % AVATAR_COLORS.length];
}

function formatShortDate(dateStr) {
    const d = new Date(dateStr);
    return `${d.getMonth() + 1}월 ${d.getDate()}일`;
}

export default function FridgeSummary({ ingredients, onViewStorage, onOpenModal, onCook }) {
    const [recommendedRecipes, setRecommendedRecipes] = useState(null); // null = loading
    const [recentHistory, setRecentHistory] = useState(null);
    const [selectedRecipe, setSelectedRecipe] = useState(null);
    const [refreshKey, setRefreshKey] = useState(0);

    useEffect(() => {
        setRecommendedRecipes(null);
        getRecommendedRecipes()
            .then((data) => setRecommendedRecipes(data.slice(0, 3)))
            .catch(() => setRecommendedRecipes([]));
        getCookHistory()
            .then((data) => setRecentHistory(data.slice(0, 3)))
            .catch(() => setRecentHistory([]));
    }, [refreshKey]);

    const handleCook = () => {
        setRefreshKey((k) => k + 1);
        setSelectedRecipe(null);
        onCook?.();
    };

    // 만료 통계
    const stats = { total: ingredients.length, fresh: 0, soon: 0, expired: 0 };
    const atRisk = [];
    ingredients.forEach((it) => {
        const { days, isExpired, isExpiringSoon } = expiryStatus(it.expireDate);
        if (isExpired) {
            stats.expired++;
            atRisk.push({ ...it, days, isExpired: true, isExpiringSoon: false });
        } else if (isExpiringSoon) {
            stats.soon++;
            atRisk.push({ ...it, days, isExpired: false, isExpiringSoon: true });
        } else {
            stats.fresh++;
        }
    });
    atRisk.sort((a, b) => a.days - b.days);
    const atRiskCount = stats.soon + stats.expired;

    // 보관 방식별 카운트
    const storageCounts = { 냉동: 0, 냉장: 0, 실온: 0 };
    ingredients.forEach((it) => { if (storageCounts[it.storageType] !== undefined) storageCounts[it.storageType]++; });

    return (
        <div className="space-y-4 mb-6">
            {/* 히어로 배너 */}
            <div
                className="relative overflow-hidden rounded-3xl border border-blue-200/70 p-10 shadow-lg shadow-blue-100/60 flex items-center justify-between gap-6"
                style={{ background: 'linear-gradient(135deg, #cfe8ff 0%, #dbeafe 50%, #f0f7ff 100%)' }}
            >
                {/* 오로라 블롭 레이어 (밝은 톤) */}
                <div className="absolute z-0 pointer-events-none" style={{
                    top: '-80px', left: '-40px', width: '300px', height: '300px', borderRadius: '50%',
                    background: 'radial-gradient(circle, rgba(56,189,248,0.45) 0%, transparent 70%)',
                    filter: 'blur(50px)',
                    animation: 'aurora-blob-1 20s ease-in-out infinite',
                }} />
                <div className="absolute z-0 pointer-events-none" style={{
                    top: '-40px', right: '140px', width: '280px', height: '280px', borderRadius: '50%',
                    background: 'radial-gradient(circle, rgba(96,165,250,0.40) 0%, transparent 70%)',
                    filter: 'blur(54px)',
                    animation: 'aurora-blob-2 25s ease-in-out infinite',
                }} />
                <div className="absolute z-0 pointer-events-none" style={{
                    bottom: '-90px', left: '40%', width: '260px', height: '260px', borderRadius: '50%',
                    background: 'radial-gradient(circle, rgba(147,197,253,0.40) 0%, transparent 70%)',
                    filter: 'blur(48px)',
                    animation: 'aurora-blob-3 18s ease-in-out infinite',
                }} />

                {/* 왼쪽 텍스트 */}
                <div className="relative z-10 flex-1 min-w-0">
                    {atRiskCount > 0 ? (
                        <>
                            <p className="text-xs font-semibold text-toss-blue/70 uppercase tracking-wide mb-2">냉장고 현황</p>
                            <p className="text-3xl font-extrabold text-blue-950 mb-2">
                                주의할 재료{' '}
                                <span className={stats.expired > 0 ? 'text-red-500' : 'text-amber-500'}>
                                    {atRiskCount}개
                                </span>
                            </p>
                            <p className="text-sm text-gray-500 mb-4">
                                {stats.expired > 0 ? '만료된 재료가 있어요. 확인해보세요.' : '소비기한이 가까운 재료가 있어요.'}
                            </p>
                            <div className="flex flex-wrap gap-2 mb-5">
                                {atRisk.slice(0, 6).map((it) => (
                                    <span
                                        key={it.id}
                                        className={`inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full text-sm font-medium ${
                                            it.isExpired ? 'bg-red-100 text-red-700' : 'bg-amber-100 text-amber-700'
                                        }`}
                                    >
                                        <span className="text-base leading-none">{getIngredientEmoji(it)}</span>
                                        {it.ingredientName}
                                        <span className="opacity-75">{it.isExpired ? '만료됨' : `${it.days}일 남음`}</span>
                                    </span>
                                ))}
                            </div>
                            <button
                                onClick={onViewStorage}
                                className="inline-flex items-center gap-1.5 rounded-full px-4 py-2.5 text-sm font-semibold bg-white/80 backdrop-blur text-toss-blue border border-blue-100 shadow-sm hover:shadow-md hover:bg-white transition-all"
                            >
                                주의 재료 보기
                                <ArrowRight className="w-4 h-4" />
                            </button>
                        </>
                    ) : (
                        <>
                            <p className="text-xs font-semibold text-toss-blue/70 uppercase tracking-wide mb-2">냉장고 현황</p>
                            <p className="text-3xl font-extrabold text-blue-950 mb-2 flex items-center gap-2">
                                <CheckCircle className="w-7 h-7 text-green-500" />
                                잘 관리되고 있어요 :)
                            </p>
                            <p className="text-sm text-gray-500 mb-5">소비기한이 임박한 재료가 없어요.</p>
                            <button
                                onClick={onOpenModal}
                                className="inline-flex items-center gap-1.5 rounded-full px-4 py-2.5 text-sm font-semibold bg-white/80 backdrop-blur text-toss-blue border border-blue-100 shadow-sm hover:shadow-md hover:bg-white transition-all"
                            >
                                재료 추가하기
                                <ArrowRight className="w-4 h-4" />
                            </button>
                        </>
                    )}
                </div>

                {/* 오른쪽 플로팅 글래스 아이콘 */}
                <div className="relative z-10 flex-shrink-0">
                    <div className="absolute inset-0 rounded-full blur-2xl" style={{
                        background: atRiskCount > 0
                            ? (stats.expired > 0
                                ? 'radial-gradient(circle, rgba(248,113,113,0.45) 0%, transparent 70%)'
                                : 'radial-gradient(circle, rgba(251,191,36,0.45) 0%, transparent 70%)')
                            : 'radial-gradient(circle, rgba(49,130,246,0.40) 0%, transparent 70%)',
                    }} />
                    <div
                        className="relative w-32 h-32 rounded-3xl bg-white/60 backdrop-blur-md border border-white/80 shadow-xl flex items-center justify-center"
                        style={{ animation: 'float 4s ease-in-out infinite' }}
                    >
                        {atRiskCount > 0 ? (
                            <AlertTriangle className={`w-16 h-16 ${stats.expired > 0 ? 'text-red-500' : 'text-amber-500'}`} strokeWidth={1.8} />
                        ) : (
                            <Refrigerator className="w-16 h-16 text-toss-blue" strokeWidth={1.8} />
                        )}
                    </div>
                </div>
            </div>

            {/* 통계 카드 */}
            <div className="grid grid-cols-4 gap-3">
                {STAT_CARDS.map(({ key, label, Icon, cardBg, numColor, iconColor }) => (
                    <div key={key} className={`${cardBg} border border-white rounded-2xl p-4 flex items-center gap-3`}>
                        <div className={`w-9 h-9 rounded-xl flex items-center justify-center flex-shrink-0 ${iconColor}`}>
                            <Icon className="w-4 h-4" />
                        </div>
                        <div>
                            <p className={`text-xl font-bold leading-none ${numColor}`}>{stats[key]}</p>
                            <p className="text-xs text-gray-400 mt-0.5">{label}</p>
                        </div>
                    </div>
                ))}
            </div>

            {/* 지금 만들 수 있는 레시피 */}
            <div className="bg-white rounded-2xl border border-gray-100 p-5">
                <div className="flex items-center justify-between mb-4">
                    <div className="flex items-center gap-2">
                        <div className="p-1.5 bg-toss-blue/10 rounded-lg">
                            <ChefHat className="w-4 h-4 text-toss-blue" />
                        </div>
                        <p className="text-sm font-semibold text-gray-700">지금 만들 수 있는 레시피</p>
                    </div>
                    {recommendedRecipes && recommendedRecipes.length > 0 && (
                        <span className="text-xs text-toss-blue font-medium bg-toss-blue/5 px-2.5 py-1 rounded-full">
                            {recommendedRecipes.length}개
                        </span>
                    )}
                </div>

                {recommendedRecipes === null ? (
                    <div className="grid grid-cols-3 gap-3">
                        {[0, 1, 2].map((i) => (
                            <div key={i} className="h-20 bg-gray-100 rounded-2xl animate-pulse" />
                        ))}
                    </div>
                ) : recommendedRecipes.length === 0 ? (
                    <div className="py-6 text-center text-gray-400 text-sm">
                        냉장고 재료를 더 채우면 추천해드릴게요
                    </div>
                ) : (
                    <div className="grid grid-cols-3 gap-3">
                        {recommendedRecipes.map((recipe) => (
                            <div
                                key={recipe.id}
                                onClick={() => setSelectedRecipe(recipe)}
                                className="rounded-2xl border border-gray-100 p-4 hover:shadow-md hover:border-gray-200 cursor-pointer transition-all"
                            >
                                <div className="flex items-start justify-between mb-2">
                                    <p className="font-semibold text-gray-900 text-sm leading-snug flex-1 pr-1 line-clamp-2">
                                        {recipe.name}
                                    </p>
                                    <span className={`flex-shrink-0 text-xs font-medium px-1.5 py-0.5 rounded-full ${difficultyBadge[recipe.difficulty]}`}>
                                        {difficultyLabel[recipe.difficulty]}
                                    </span>
                                </div>
                                <span className="flex items-center gap-1 text-xs text-gray-400">
                                    <Clock className="w-3 h-3" />{recipe.estimatedTime}분
                                </span>
                            </div>
                        ))}
                    </div>
                )}
            </div>

            {/* 보관 방식별 구성 + 최근 요리 이력 */}
            <div className="grid grid-cols-2 gap-4">
                {/* 보관 방식별 구성 */}
                <div className="bg-white rounded-2xl border border-gray-100 p-5">
                    <p className="text-sm font-semibold text-gray-700 mb-4">보관 방식별 구성</p>
                    <div className="space-y-3">
                        {STORAGE_TYPES.map(({ key, label, Icon, bar, text }) => {
                            const count = storageCounts[key];
                            const pct = stats.total > 0 ? Math.round((count / stats.total) * 100) : 0;
                            return (
                                <div key={key}>
                                    <div className="flex items-center justify-between mb-1.5">
                                        <div className="flex items-center gap-1.5">
                                            <Icon className={`w-3.5 h-3.5 ${text}`} />
                                            <span className="text-xs text-gray-600">{label}</span>
                                        </div>
                                        <span className="text-xs font-semibold text-gray-700">{count}개</span>
                                    </div>
                                    <div className="h-1.5 bg-gray-100 rounded-full overflow-hidden">
                                        <div
                                            className={`h-full rounded-full transition-all duration-500 ${bar}`}
                                            style={{ width: `${pct}%` }}
                                        />
                                    </div>
                                </div>
                            );
                        })}
                    </div>
                </div>

                {/* 최근 요리 이력 */}
                <div className="bg-white rounded-2xl border border-gray-100 p-5">
                    <p className="text-sm font-semibold text-gray-700 mb-4">최근 요리 이력</p>
                    {recentHistory === null ? (
                        <div className="space-y-3">
                            {[0, 1, 2].map((i) => (
                                <div key={i} className="h-9 bg-gray-100 rounded-xl animate-pulse" />
                            ))}
                        </div>
                    ) : recentHistory.length === 0 ? (
                        <div className="py-4 text-center text-gray-400 text-sm">아직 요리 이력이 없어요</div>
                    ) : (
                        <div className="space-y-2.5">
                            {recentHistory.map((item) => (
                                <div key={item.id} className="flex items-center gap-3">
                                    <div className={`w-8 h-8 rounded-full flex items-center justify-center text-sm font-bold flex-shrink-0 ${avatarColor(item.recipeName)}`}>
                                        {(item.recipeName || '?')[0]}
                                    </div>
                                    <div className="flex-1 min-w-0">
                                        <p className="text-sm font-medium text-gray-800 truncate">{item.recipeName}</p>
                                        <p className="text-xs text-gray-400">{formatShortDate(item.cookedAt)}</p>
                                    </div>
                                </div>
                            ))}
                        </div>
                    )}
                </div>
            </div>

            {/* 레시피 상세 모달 */}
            <RecipeDetailModal recipe={selectedRecipe} onClose={() => setSelectedRecipe(null)} onCook={handleCook} />
        </div>
    );
}
