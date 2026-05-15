import { useState } from 'react';
import {
    Beef, Carrot, Apple, Milk, Fish, Wheat, Soup, UtensilsCrossed, Calendar,
} from 'lucide-react';
import { RecipeModal } from './RecipeModal';

const getCategoryIcon = (category) => {
    const iconClass = "w-16 h-16";
    switch (category) {
        case '육류': return <Beef className={iconClass} />;
        case '채소': return <Carrot className={iconClass} />;
        case '과일': return <Apple className={iconClass} />;
        case '유제품': return <Milk className={iconClass} />;
        case '해산물': return <Fish className={iconClass} />;
        case '곡물': return <Wheat className={iconClass} />;
        case '조미료': return <Soup className={iconClass} />;
        default: return <UtensilsCrossed className={iconClass} />;
    }
};

const Shelf = ({ children, isDrawer = false }) => (
    <div className="relative mb-2">
        {isDrawer ? (
            <div className="relative bg-white border-2 border-gray-300 rounded-lg shadow-lg min-h-[120px] p-3">
                <div className="absolute inset-x-0 top-0 h-8 bg-gradient-to-b from-gray-100 to-transparent rounded-t-lg"></div>
                <div className="absolute top-2 left-1/2 -translate-x-1/2 w-16 h-1.5 bg-gray-400 rounded-full shadow-sm"></div>
                <div className="relative z-10 mt-4">{children}</div>
            </div>
        ) : (
            <div className="relative bg-white/90 min-h-[140px] p-4 pt-6">
                <div className="absolute inset-x-0 top-0 h-3 bg-gradient-to-b from-gray-200 via-gray-100 to-transparent rounded-sm shadow-lg border-t border-gray-300"></div>
                <div className="absolute inset-x-0 top-3 h-px bg-white/50"></div>
                <div className="absolute inset-x-0 top-3 h-12 bg-gradient-to-b from-gray-900/5 to-transparent"></div>
                {children}
            </div>
        )}
    </div>
);

const IngredientItem = ({ ingredient, onClick, onDelete }) => {
    const today = new Date();
    const expiryDate = new Date(ingredient.expiryDate);
    const daysUntilExpiry = Math.ceil((expiryDate.getTime() - today.getTime()) / (1000 * 60 * 60 * 24));
    const isExpiringSoon = daysUntilExpiry <= 3 && daysUntilExpiry >= 0;
    const isExpired = daysUntilExpiry < 0;

    return (
        <div className="group relative flex-shrink-0 cursor-pointer" onClick={() => onClick(ingredient)}>
            <div className={`flex flex-col items-center justify-center p-4 rounded-xl transition-all hover:scale-110 ${
                isExpired ? 'bg-red-100/80 border-2 border-red-400 shadow-lg' :
                    isExpiringSoon ? 'bg-yellow-100/80 border-2 border-yellow-400 shadow-lg' :
                        'hover:bg-white/80 hover:shadow-xl'
            }`}>
                <div
                    className={`mb-2 ${isExpired ? 'text-red-600' : isExpiringSoon ? 'text-yellow-700' : 'text-gray-700'}`}>
                    {getCategoryIcon(ingredient.category)}
                </div>
                <div className="text-sm font-semibold text-gray-900 text-center truncate w-full px-1">
                    {ingredient.name}
                </div>
                <div className="text-xs text-gray-600 mt-1">{ingredient.quantity}{ingredient.unit}</div>
                <div className="mt-1 text-xs px-2 py-0.5 rounded-full bg-blue-100 text-blue-700">
                    {ingredient.storageMethod === 'frozen' ? '❄️ 냉동' :
                        ingredient.storageMethod === 'refrigerated' ? '💧 냉장' : '☁️ 실온'}
                </div>
                <div className={`mt-1 text-xs flex items-center gap-1 ${
                    isExpired ? 'text-red-600 font-semibold' :
                        isExpiringSoon ? 'text-yellow-700 font-semibold' : 'text-gray-500'
                }`}>
                    <Calendar className="w-3 h-3"/>
                    {isExpired ? '만료됨' : `${daysUntilExpiry}일 남음`}
                </div>
                <button
                    onClick={(e) => {
                        e.stopPropagation();
                        onDelete(ingredient);
                    }}
                    className="mt-2 text-xs text-red-400 hover:text-red-600 transition-colors"
                >
                    삭제
                </button>
                {/* 호버 툴팁 */}
                <div
                    className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 hidden group-hover:block z-10 pointer-events-none">
                    <div className="bg-gray-900 text-white text-xs rounded-lg py-2 px-3 whitespace-nowrap shadow-xl">
                        <div className="font-semibold mb-1">{ingredient.name}</div>
                        <div className="text-gray-300">{ingredient.category}</div>
                        <div className="text-gray-300">구매: {ingredient.purchaseDate}</div>
                        <div
                            className={`${isExpired ? 'text-red-400' : isExpiringSoon ? 'text-yellow-400' : 'text-gray-300'}`}>
                            유통: {ingredient.expiryDate}
                            {isExpired && ' ⚠️ 만료됨'}
                            {isExpiringSoon && ` ⚠️ ${daysUntilExpiry}일 남음`}
                        </div>
                        <div className="text-blue-300 mt-1 text-center">클릭하여 레시피 보기</div>
                        <div
                            className="absolute top-full left-1/2 -translate-x-1/2 border-4 border-transparent border-t-gray-900"></div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export function RefrigeratorView({ingredients, onDelete, onCook}) {
    const [selectedIngredient, setSelectedIngredient] = useState(null);
    const [isRecipeModalOpen, setIsRecipeModalOpen] = useState(false);

    const maxItemsPerShelf = 8;
    const shelves = [
        ingredients.slice(0, maxItemsPerShelf),
        ingredients.slice(maxItemsPerShelf, maxItemsPerShelf * 2),
        ingredients.slice(maxItemsPerShelf * 2, maxItemsPerShelf * 3),
        ingredients.slice(maxItemsPerShelf * 3, maxItemsPerShelf * 4),
    ];

    const handleIngredientClick = (ingredient) => {
        setSelectedIngredient(ingredient);
        setIsRecipeModalOpen(true);
    };

    const handleRecipeModalClose = () => {
        setIsRecipeModalOpen(false);
        setSelectedIngredient(null);
    };

    return (
        <div className="w-full max-w-6xl">
            <div className="relative bg-white rounded-3xl shadow-2xl border-4 border-gray-300 p-8 overflow-hidden">
                <div className="absolute top-0 left-1/2 -translate-x-1/2 w-3/4 h-40 bg-gradient-to-b from-blue-100/20 via-white/10 to-transparent blur-3xl"></div>
                <div className="absolute top-3 left-4 right-4 h-2 bg-gradient-to-r from-transparent via-blue-200/40 to-transparent rounded-full shadow-sm"></div>
                <div className="absolute top-5 left-8 right-8 h-px bg-white/80"></div>

                <div className="relative mt-8">
                    {shelves.map((shelfItems, index) => (
                        <Shelf key={index} isDrawer={index === 3}>
                            {shelfItems.length > 0 ? (
                                <div className="flex items-center gap-6 overflow-x-auto pb-2 justify-start">
                                    {shelfItems.map((ingredient, idx) => (
                                        <IngredientItem key={idx} ingredient={ingredient} onClick={handleIngredientClick} onDelete={onDelete} />
                                    ))}
                                </div>
                            ) : (
                                <div className="flex items-center justify-center h-full text-gray-400 text-sm italic">
                                    비어있음
                                </div>
                            )}
                        </Shelf>
                    ))}
                </div>

                <div className="mt-6 text-center">
                    <div className="inline-block bg-gray-50/80 backdrop-blur-sm px-6 py-2 rounded-full shadow-md border border-gray-300">
            <span className="text-sm font-semibold text-gray-700">
              총 {ingredients.length}개의 식재료 보관 중
            </span>
                    </div>
                </div>
            </div>

            {selectedIngredient && (
                <RecipeModal
                    isOpen={isRecipeModalOpen}
                    onClose={handleRecipeModalClose}
                    ingredient={selectedIngredient}
                    onCook={onCook}
                />
            )}
        </div>
    );
}