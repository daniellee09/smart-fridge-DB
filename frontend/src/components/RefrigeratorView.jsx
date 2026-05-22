import { useState } from 'react';
import { ChevronRight, Snowflake, Droplet, Cloud } from 'lucide-react';
import { RecipeModal } from './RecipeModal';
import { expiryStatus } from '../utils/expiry';
import { getIngredientEmoji } from '../utils/ingredientEmoji';

const storageLabel = { 냉동: '❄️ 냉동', 냉장: '💧 냉장', 실온: '☁️ 실온' };

const COMPARTMENTS = [
    {
        key: '냉동',
        label: '냉동실',
        Icon: Snowflake,
        headerTint: 'bg-sky-50 text-sky-500',
        bodyBg: 'bg-sky-50/30',
    },
    {
        key: '냉장',
        label: '냉장실',
        Icon: Droplet,
        headerTint: 'bg-blue-50 text-toss-blue',
        bodyBg: 'bg-white',
    },
    {
        key: '실온',
        label: '실온',
        Icon: Cloud,
        headerTint: 'bg-gray-100 text-gray-400',
        bodyBg: 'bg-white',
    },
];

function Compartment({ config, items, onCardClick, onDelete }) {
    const { label, Icon, headerTint, bodyBg } = config;
    return (
        <div className={`p-5 ${bodyBg}`}>
            <div className="flex items-center justify-between mb-4">
                <div className="flex items-center gap-2.5">
                    <div className={`p-1.5 rounded-lg ${headerTint}`}>
                        <Icon className="w-4 h-4" />
                    </div>
                    <span className="text-sm font-semibold text-gray-700">{label}</span>
                </div>
                <span className="text-xs font-medium text-gray-400 bg-gray-100 px-2.5 py-0.5 rounded-full">
                    {items.length}개
                </span>
            </div>

            {items.length === 0 ? (
                <div className="flex items-center justify-center py-6 text-gray-300">
                    <p className="text-xs">{label}이 비어있어요</p>
                </div>
            ) : (
                <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-3">
                    {items.map((ingredient) => (
                        <IngredientCard
                            key={ingredient.id}
                            ingredient={ingredient}
                            onClick={onCardClick}
                            onDelete={onDelete}
                        />
                    ))}
                </div>
            )}
        </div>
    );
}

function IngredientCard({ ingredient, onClick, onDelete }) {
    const { days: daysUntilExpiry, isExpired, isExpiringSoon } = expiryStatus(ingredient.expireDate);

    const expiryBadgeClass = isExpired
        ? 'bg-red-50 text-red-600'
        : isExpiringSoon
        ? 'bg-amber-50 text-amber-600'
        : 'bg-gray-50 text-gray-400';

    const expiryText = isExpired ? '만료됨' : `${daysUntilExpiry}일 남음`;

    const borderClass = isExpired
        ? 'border-red-200'
        : isExpiringSoon
        ? 'border-amber-200'
        : 'border-transparent';

    return (
        <div
            onClick={() => onClick(ingredient)}
            className={`group bg-white rounded-2xl p-4 shadow-sm border cursor-pointer hover:shadow-md transition-all ${borderClass}`}
        >
            <div className="flex items-start justify-between mb-3">
                <div className={`p-2 rounded-xl ${isExpired ? 'bg-red-50 text-red-500' : isExpiringSoon ? 'bg-amber-50 text-amber-500' : 'bg-gray-50 text-gray-500'}`}>
                    <span className="text-2xl leading-none">{getIngredientEmoji(ingredient)}</span>
                </div>
                <span className={`text-xs font-medium px-2 py-0.5 rounded-full ${expiryBadgeClass}`}>
                    {expiryText}
                </span>
            </div>

            <p className="font-semibold text-gray-900 text-sm mb-0.5 truncate">{ingredient.ingredientName}</p>
            <p className="text-xs text-gray-400 mb-3">{ingredient.quantity}{ingredient.standardUnit}</p>

            <div className="flex items-center justify-between">
                <span className="text-xs text-gray-400">{storageLabel[ingredient.storageType] ?? ingredient.storageType}</span>
                <div className="flex items-center gap-2 opacity-0 group-hover:opacity-100 transition-opacity">
                    <button
                        onClick={(e) => { e.stopPropagation(); onDelete(ingredient); }}
                        className="text-xs text-red-400 hover:text-red-600 transition-colors"
                    >
                        삭제
                    </button>
                    <ChevronRight className="w-3.5 h-3.5 text-gray-300" />
                </div>
            </div>
        </div>
    );
}

export function RefrigeratorView({ ingredients, onDelete, onCook }) {
    const [selectedIngredient, setSelectedIngredient] = useState(null);
    const [isRecipeModalOpen, setIsRecipeModalOpen] = useState(false);

    const handleIngredientClick = (ingredient) => {
        setSelectedIngredient(ingredient);
        setIsRecipeModalOpen(true);
    };

    const handleRecipeModalClose = () => {
        setIsRecipeModalOpen(false);
        setSelectedIngredient(null);
    };

    const grouped = { 냉동: [], 냉장: [], 실온: [] };
    ingredients.forEach((it) => {
        const bucket = grouped[it.storageType];
        (bucket ?? grouped['냉장']).push(it);
    });

    return (
        <>
            <div className="rounded-3xl border border-gray-200 shadow-sm overflow-hidden">
                {COMPARTMENTS.map((compartment, idx) => (
                    <div key={compartment.key}>
                        {idx > 0 && (
                            <div className="h-px bg-gradient-to-r from-transparent via-gray-200 to-transparent shadow-[0_1px_0_0_rgba(0,0,0,0.04)]" />
                        )}
                        <Compartment
                            config={compartment}
                            items={grouped[compartment.key]}
                            onCardClick={handleIngredientClick}
                            onDelete={onDelete}
                        />
                    </div>
                ))}
            </div>

            {selectedIngredient && (
                <RecipeModal
                    isOpen={isRecipeModalOpen}
                    onClose={handleRecipeModalClose}
                    ingredient={selectedIngredient}
                    onCook={onCook}
                />
            )}
        </>
    );
}
