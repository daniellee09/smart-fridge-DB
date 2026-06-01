import { useState, useEffect } from 'react';
import { ChefHat, ClipboardList, ChevronRight, Trash2 } from 'lucide-react';
import { getCookHistory, deleteCookHistory } from '../api/history';

function formatDate(dateStr) {
    const d = new Date(dateStr);
    return d.toLocaleDateString('ko-KR', { year: 'numeric', month: 'long', day: 'numeric' });
}

function formatTime(dateStr) {
    const d = new Date(dateStr);
    return d.toLocaleTimeString('ko-KR', { hour: '2-digit', minute: '2-digit' });
}

function getInitial(name) {
    return name ? name[0] : '?';
}

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

export default function HistoryPage({ onRestore }) {
    const [history, setHistory] = useState([]);
    const [deleteTargetId, setDeleteTargetId] = useState(null);

    const loadHistory = () => {
        getCookHistory()
            .then(setHistory)
            .catch((err) => console.error('요리 이력 불러오기 실패:', err));
    };

    useEffect(() => {
        loadHistory();
    }, []);

    const handleDeleteConfirm = async () => {
        try {
            await deleteCookHistory(deleteTargetId);
            setDeleteTargetId(null);
            loadHistory();
            onRestore?.(); // 삭제 시 복구된 냉장고 재고를 App 상태에도 즉시 반영
        } catch (err) {
            console.error('요리 이력 삭제 실패:', err);
            setDeleteTargetId(null);
        }
    };

    const now = new Date();
    const thisMonthCount = history.filter((h) => {
        const d = new Date(h.cookedAt);
        return d.getFullYear() === now.getFullYear() && d.getMonth() === now.getMonth();
    }).length;
    const latest = history.length
        ? history.reduce((a, b) => (new Date(b.cookedAt) > new Date(a.cookedAt) ? b : a))
        : null;

    return (
        <div className="p-8">
            <div className="max-w-3xl mx-auto">
                {/* 헤더 */}
                <div className="mb-8">
                    <div className="flex items-center gap-3 mb-4">
                        <div className="w-11 h-11 rounded-2xl bg-toss-blue/10 flex items-center justify-center flex-shrink-0">
                            <ClipboardList className="w-5 h-5 text-toss-blue" />
                        </div>
                        <div>
                            <h1 className="text-2xl font-bold text-gray-900">요리 이력</h1>
                            <p className="text-sm text-gray-400 mt-0.5">지금까지 만든 요리를 모아봤어요</p>
                        </div>
                    </div>

                    {history.length > 0 && (
                        <div className="flex items-stretch rounded-2xl border border-gray-100 bg-white shadow-sm overflow-hidden">
                            <div className="flex-1 px-5 py-3.5">
                                <p className="text-xs text-gray-400">총 요리</p>
                                <p className="text-lg font-bold text-toss-blue mt-0.5">
                                    {history.length}<span className="text-sm font-medium text-gray-400">번</span>
                                </p>
                            </div>
                            <div className="w-px bg-gray-100" />
                            <div className="flex-1 px-5 py-3.5">
                                <p className="text-xs text-gray-400">이번 달</p>
                                <p className="text-lg font-bold text-gray-900 mt-0.5">
                                    {thisMonthCount}<span className="text-sm font-medium text-gray-400">번</span>
                                </p>
                            </div>
                            <div className="w-px bg-gray-100" />
                            <div className="flex-1 px-5 py-3.5 min-w-0">
                                <p className="text-xs text-gray-400">최근 요리</p>
                                <p className="text-sm font-semibold text-gray-900 mt-1 truncate">{latest?.recipeName}</p>
                            </div>
                        </div>
                    )}
                </div>

                {history.length === 0 ? (
                    <div className="flex flex-col items-center justify-center py-24 text-gray-300">
                        <ChefHat className="w-14 h-14 mb-4" />
                        <p className="text-base font-medium text-gray-400">아직 요리 이력이 없어요</p>
                        <p className="text-sm mt-1 text-gray-300">냉장고에서 재료를 눌러 요리해보세요</p>
                    </div>
                ) : (
                    <div className="bg-white rounded-2xl shadow-sm border border-gray-50 overflow-hidden">
                        {history.map((item, idx) => (
                            <div
                                key={item.id}
                                className={`flex items-center gap-4 px-5 py-4 hover:bg-gray-50 transition-colors ${
                                    idx !== history.length - 1 ? 'border-b border-gray-50' : ''
                                }`}
                            >
                                {/* 아바타 */}
                                <div className={`w-10 h-10 rounded-full flex items-center justify-center text-base font-bold flex-shrink-0 ${avatarColor(item.recipeName)}`}>
                                    {getInitial(item.recipeName)}
                                </div>

                                {/* 이름 + 날짜 */}
                                <div className="flex-1 min-w-0">
                                    <p className="font-semibold text-gray-900 truncate">{item.recipeName}</p>
                                    <p className="text-xs text-gray-400 mt-0.5">
                                        {formatDate(item.cookedAt)} · {formatTime(item.cookedAt)}
                                    </p>
                                </div>

                                <button
                                    onClick={() => setDeleteTargetId(item.id)}
                                    className="p-1.5 text-gray-300 hover:text-red-500 hover:bg-red-50 rounded-lg transition-colors flex-shrink-0"
                                >
                                    <Trash2 className="w-4 h-4" />
                                </button>
                            </div>
                        ))}
                    </div>
                )}
            </div>

            {/* 삭제 확인 다이얼로그 */}
            {deleteTargetId !== null && (
                <div className="fixed inset-0 bg-black/40 flex items-center justify-center z-50 p-4">
                    <div className="bg-white rounded-2xl shadow-xl p-6 max-w-sm w-full">
                        <div className="flex items-center gap-3 mb-3">
                            <div className="p-2 bg-red-50 rounded-xl">
                                <Trash2 className="w-5 h-5 text-red-500" />
                            </div>
                            <h3 className="font-bold text-gray-900">요리 기록 삭제</h3>
                        </div>
                        <p className="text-sm text-gray-500 mb-6">이 요리 기록을 삭제할까요? 삭제한 기록은 복구할 수 없어요.</p>
                        <div className="flex gap-3">
                            <button
                                onClick={() => setDeleteTargetId(null)}
                                className="flex-1 py-2.5 text-sm font-medium text-gray-600 bg-gray-100 hover:bg-gray-200 rounded-xl transition-colors"
                            >
                                취소
                            </button>
                            <button
                                onClick={handleDeleteConfirm}
                                className="flex-1 py-2.5 text-sm font-medium text-white bg-red-500 hover:bg-red-600 rounded-xl transition-colors"
                            >
                                삭제
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
}
