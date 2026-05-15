import { useState } from 'react';
import { BrowserRouter, Routes, Route, NavLink } from 'react-router-dom';
import { AddIngredientModal } from './components/AddIngredientModal';
import { RefrigeratorView } from './components/RefrigeratorView';
import RecipesPage from './pages/RecipesPage';
import HistoryPage from './pages/HistoryPage';
import { Plus, Refrigerator, ChefHat, ClipboardList } from 'lucide-react';

function FridgePage({ ingredients, onDelete, onCook, onOpenModal }) {
    return (
        <div className="min-h-screen bg-gradient-to-br from-gray-100 via-gray-50 to-white p-8">
            <div className="max-w-6xl mx-auto">
                <div className="flex items-center justify-between mb-8">
                    <h1 className="text-4xl font-bold text-gray-800">나의 냉장고</h1>
                    <button
                        onClick={onOpenModal}
                        className="inline-flex items-center gap-2 px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors font-medium shadow-lg hover:shadow-xl"
                    >
                        <Plus className="w-5 h-5" />
                        새 식재료 추가
                    </button>
                </div>
                <RefrigeratorView
                    ingredients={ingredients}
                    onDelete={onDelete}
                    onCook={onCook}
                />
            </div>
        </div>
    );
}

export default function App() {
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [ingredients, setIngredients] = useState([]);

    const handleAddIngredient = (data) => {
        setIngredients([...ingredients, data]);
    };

    const handleDeleteIngredient = (target) => {
        setIngredients(ingredients.filter((item) => item !== target));
    };

    const handleCook = (recipeIngredients) => {
        setIngredients((prev) => {
            let updated = [...prev];
            recipeIngredients.forEach((recipeIng) => {
                let remainQty = recipeIng.qty;
                updated = updated.map((fridgeItem) => {
                    if (fridgeItem.name !== recipeIng.name) return fridgeItem;
                    const currentQty = parseFloat(fridgeItem.quantity);
                    if (remainQty <= 0) return fridgeItem;
                    const deducted = Math.min(currentQty, remainQty);
                    remainQty -= deducted;
                    return { ...fridgeItem, quantity: String(currentQty - deducted) };
                });
            });
            return updated.filter((item) => parseFloat(item.quantity) > 0);
        });
    };

    return (
        <BrowserRouter>
            {/* 네비게이션 */}
            <nav className="sticky top-0 z-40 bg-white border-b border-gray-200 shadow-sm">
                <div className="max-w-6xl mx-auto px-8 py-3 flex items-center gap-6">
                    <span className="text-xl font-bold text-blue-600">🧊 스마트 냉장고</span>
                    <div className="flex gap-2">
                        <NavLink
                            to="/fridge"
                            className={({ isActive }) =>
                                `flex items-center gap-2 px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                    isActive ? 'bg-blue-600 text-white' : 'text-gray-600 hover:bg-gray-100'
                                }`
                            }
                        >
                            <Refrigerator className="w-4 h-4" />
                            냉장고
                        </NavLink>
                        <NavLink
                            to="/recipes"
                            className={({ isActive }) =>
                                `flex items-center gap-2 px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                    isActive ? 'bg-blue-600 text-white' : 'text-gray-600 hover:bg-gray-100'
                                }`
                            }
                        >
                            <ChefHat className="w-4 h-4" />
                            레시피
                        </NavLink>
                        <NavLink
                            to="/history"
                            className={({ isActive }) =>
                                `flex items-center gap-2 px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                                    isActive ? 'bg-blue-600 text-white' : 'text-gray-600 hover:bg-gray-100'
                                }`
                            }
                        >
                            <ClipboardList className="w-4 h-4" />
                            요리 이력
                        </NavLink>
                    </div>
                </div>
            </nav>

            {/* 페이지 */}
            <Routes>
                <Route
                    path="/fridge"
                    element={
                        <FridgePage
                            ingredients={ingredients}
                            onDelete={handleDeleteIngredient}
                            onCook={handleCook}
                            onOpenModal={() => setIsModalOpen(true)}
                        />
                    }
                />
                <Route path="/recipes" element={<RecipesPage />} />
                <Route path="/history" element={<HistoryPage />} />
                <Route path="/" element={
                    <FridgePage
                        ingredients={ingredients}
                        onDelete={handleDeleteIngredient}
                        onCook={handleCook}
                        onOpenModal={() => setIsModalOpen(true)}
                    />
                } />
            </Routes>

            <AddIngredientModal
                isOpen={isModalOpen}
                onClose={() => setIsModalOpen(false)}
                onSubmit={handleAddIngredient}
            />
        </BrowserRouter>
    );
}