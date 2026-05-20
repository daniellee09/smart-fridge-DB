import { useState, useEffect } from 'react';
import { BrowserRouter, Routes, Route, NavLink, Navigate } from 'react-router-dom';
import { AddIngredientModal } from './components/AddIngredientModal';
import FridgePage from './pages/FridgePage';
import RecipesPage from './pages/RecipesPage';
import HistoryPage from './pages/HistoryPage';
import { Refrigerator, ChefHat, ClipboardList } from 'lucide-react';
import { getFridge, deleteFridgeItem } from './api/fridge';

export default function App() {
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [ingredients, setIngredients] = useState([]);

    const fetchFridge = async () => {
        try {
            const data = await getFridge();
            setIngredients(data);
        } catch (err) {
            console.error('냉장고 데이터 불러오기 실패:', err);
        }
    };

    useEffect(() => {
        fetchFridge();
    }, []);

    const handleAddIngredient = () => {
        fetchFridge();
    };

    const handleDeleteIngredient = async (target) => {
        try {
            await deleteFridgeItem(target.id);
            fetchFridge();
        } catch (err) {
            console.error('삭제 실패:', err);
            alert('삭제에 실패했어요. 다시 시도해주세요.');
        }
    };

    const handleCook = () => {
        fetchFridge();
    };

    return (
        <BrowserRouter>
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

            <Routes>
                <Route path="/" element={<Navigate to="/fridge" replace />} />
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
                <Route path="*" element={<Navigate to="/fridge" replace />} />
            </Routes>

            <AddIngredientModal
                isOpen={isModalOpen}
                onClose={() => setIsModalOpen(false)}
                onSubmit={handleAddIngredient}
            />
        </BrowserRouter>
    );
}
