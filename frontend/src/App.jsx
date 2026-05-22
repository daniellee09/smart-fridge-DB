import { useState, useEffect } from 'react';
import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import { AddIngredientModal } from './components/AddIngredientModal';
import Sidebar from './components/Sidebar';
import FridgePage from './pages/FridgePage';
import RecipesPage from './pages/RecipesPage';
import HistoryPage from './pages/HistoryPage';
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
            <div className="flex min-h-screen bg-app-bg">
                <Sidebar />
                <main className="flex-1 min-w-0">
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
                </main>
            </div>

            <AddIngredientModal
                isOpen={isModalOpen}
                onClose={() => setIsModalOpen(false)}
                onSubmit={handleAddIngredient}
            />
        </BrowserRouter>
    );
}
