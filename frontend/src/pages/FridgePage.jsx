import { useState } from 'react';
import { RefrigeratorView } from '../components/RefrigeratorView';
import FridgeSummary from '../components/FridgeSummary';
import { Plus, LayoutDashboard, Package } from 'lucide-react';

const SORT_OPTIONS = [
    { value: 'expiry', label: '소비기한순' },
    { value: 'name', label: '이름순' },
    { value: 'added', label: '등록일순' },
];

const SORTERS = {
    expiry: (a, b) => new Date(a.expireDate) - new Date(b.expireDate),
    name: (a, b) => a.ingredientName.localeCompare(b.ingredientName, 'ko'),
    added: (a, b) => new Date(b.addDate) - new Date(a.addDate),
};

const TABS = [
    { value: 'overview', label: '냉장고 현황', Icon: LayoutDashboard },
    { value: 'storage', label: '보관 재료', Icon: Package },
];

export default function FridgePage({ ingredients, onDelete, onCook, onOpenModal }) {
    const [tab, setTab] = useState('overview');
    const [sortKey, setSortKey] = useState('expiry');
    const sorted = [...ingredients].sort(SORTERS[sortKey]);

    return (
        <>
            <div className="p-8 pb-28">
                <div className="max-w-6xl mx-auto">
                    {/* 헤더 */}
                    <div className="flex items-center justify-between mb-6">
                        <div>
                            <h1 className="text-2xl font-bold text-gray-900">나의 냉장고</h1>
                            <p className="text-sm text-gray-400 mt-0.5">총 {ingredients.length}개의 식재료</p>
                        </div>
                        {/* 탭 토글 */}
                        <div className="flex gap-1 bg-gray-100 rounded-xl p-1">
                            {TABS.map(({ value, label, Icon }) => (
                                <button
                                    key={value}
                                    onClick={() => setTab(value)}
                                    className={`flex items-center gap-1.5 px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                        tab === value
                                            ? 'bg-white text-toss-blue shadow-sm'
                                            : 'text-gray-500 hover:text-gray-700'
                                    }`}
                                >
                                    <Icon className="w-3.5 h-3.5" />
                                    {label}
                                </button>
                            ))}
                        </div>
                    </div>

                    {/* 뷰: 냉장고 현황 */}
                    {tab === 'overview' && (
                        <FridgeSummary ingredients={ingredients} />
                    )}

                    {/* 뷰: 보관 재료 */}
                    {tab === 'storage' && (
                        <>
                            <div className="flex items-center justify-between mb-4">
                                <p className="text-xs text-gray-400">보관 방식별 구분</p>
                                <div className="flex gap-1 bg-gray-100 rounded-xl p-1">
                                    {SORT_OPTIONS.map((opt) => (
                                        <button
                                            key={opt.value}
                                            onClick={() => setSortKey(opt.value)}
                                            className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${
                                                sortKey === opt.value
                                                    ? 'bg-white text-toss-blue shadow-sm'
                                                    : 'text-gray-500 hover:text-gray-700'
                                            }`}
                                        >
                                            {opt.label}
                                        </button>
                                    ))}
                                </div>
                            </div>
                            <RefrigeratorView
                                ingredients={sorted}
                                onDelete={onDelete}
                                onCook={onCook}
                            />
                        </>
                    )}
                </div>
            </div>

            {/* FAB — 식재료 추가 */}
            <button
                onClick={onOpenModal}
                className="fixed bottom-8 left-1/2 -translate-x-1/2 z-40
                    inline-flex items-center gap-2 px-6 py-3.5
                    bg-toss-blue hover:bg-toss-blue-hover text-white
                    rounded-full font-semibold text-sm
                    shadow-lg shadow-blue-200 hover:shadow-xl hover:shadow-blue-300
                    transition-all duration-200
                    active:scale-95 active:shadow-md
                    select-none"
            >
                <Plus className="w-4 h-4" />
                식재료 추가
            </button>
        </>
    );
}
