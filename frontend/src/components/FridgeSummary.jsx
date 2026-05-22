import { useState, useEffect } from 'react';
import { Refrigerator, Package, Leaf, AlarmClock, AlertTriangle, CheckCircle, Clock, ChefHat, Snowflake, Droplet, Cloud } from 'lucide-react';
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

export default function FridgeSummary({ ingredients }) {
    const [recommendedRecipes, setRecommendedRecipes] = useState(null); // null = loading
    const [recentHistory, setRecentHistory] = useState(null);
    const [selectedRecipe, setSelectedRecipe] = useState(null);

    useEffect(() => {
        getRecommendedRecipes()
            .then((data) => setRecommendedRecipes(data.slice(0, 3)))
            .catch(() => setRecommendedRecipes([]));
        getCookHistory()
            .then((data) => setRecentHistory(data.slice(0, 3)))
            .catch(() => setRecentHistory([]));
    }, []);

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
            <div className="rounded-3xl bg-gradient-to-br from-blue-50 via-sky-50 to-white border border-blue-100 p-6 flex items-center justify-between gap-4 overflow-hidden">
                <div className="flex-1 min-w-0">
                    {atRiskCount > 0 ? (
                        <>
                            <p className="text-xs font-semibold text-gray-400 uppercase tracking-wide mb-1">냉장고 현황</p>
                            <p className="text-xl font-bold text-gray-900 mb-1">
                                주의할 재료{' '}
                                <span className={stats.expired > 0 ? 'text-red-500' : 'text-amber-500'}>
                                    {atRiskCount}개
                                </span>
                            </p>
                            <p className="text-xs text-gray-400 mb-4">
                                {stats.expired > 0 ? '만료된 재료가 있어요. 확인해보세요.' : '소비기한이 가까운 재료가 있어요.'}
                            </p>
                            <div className="flex flex-wrap gap-2">
                                {atRisk.slice(0, 6).map((it) => (
                                    <span
                                        key={it.id}
                                        className={`inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full text-xs font-medium ${
                                            it.isExpired ? 'bg-red-100 text-red-700' : 'bg-amber-100 text-amber-700'
                                        }`}
                                    >
                                        <span className="text-sm leading-none">{getIngredientEmoji(it)}</span>
                                        {it.ingredientName}
                                        <span className="opacity-75">{it.isExpired ? '만료됨' : `${it.days}일 남음`}</span>
                                    </span>
                                ))}
                            </div>
                        </>
                    ) : (
                        <>
                            <p className="text-xs font-semibold text-gray-400 uppercase tracking-wide mb-1">냉장고 현황</p>
                            <p className="text-xl font-bold text-gray-900 mb-1 flex items-center gap-2">
                                <CheckCircle className="w-5 h-5 text-green-500" />
                                잘 관리되고 있어요 :)
                            </p>
                            <p className="text-xs text-gray-400">소비기한이 임박한 재료가 없어요.</p>
                        </>
                    )}
                </div>
                <div className="flex-shrink-0 w-20 h-20 rounded-2xl bg-white/70 border border-blue-100 flex items-center justify-center shadow-sm">
                    <Refrigerator className="w-10 h-10 text-toss-blue opacity-70" />
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
            <RecipeDetailModal recipe={selectedRecipe} onClose={() => setSelectedRecipe(null)} />
        </div>
    );
}
