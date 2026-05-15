import { useState } from 'react';
import { AddIngredientModal } from './components/AddIngredientModal';
import { RefrigeratorView } from './components/RefrigeratorView';
import { Plus } from 'lucide-react';

export default function App() {
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [ingredients, setIngredients] = useState([]);

    const handleAddIngredient = (data) => {
        setIngredients([...ingredients, data]);
    };
    const handleDeleteIngredient = (target) => {
        setIngredients(ingredients.filter((item) => item !== target));
    };
    return (
        <div className="size-full flex flex-col items-center justify-center bg-gradient-to-br from-gray-100 via-gray-50 to-white p-8 overflow-auto">
            <div className="w-full max-w-6xl">
                <div className="flex items-center justify-between mb-8">
                    <h1 className="text-4xl font-bold text-gray-800">나의 냉장고</h1>
                    <button
                        onClick={() => setIsModalOpen(true)}
                        className="inline-flex items-center gap-2 px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors font-medium shadow-lg hover:shadow-xl"
                    >
                        <Plus className="w-5 h-5" />
                        새 식재료 추가
                    </button>
                </div>
                <RefrigeratorView ingredients={ingredients} onDelete={handleDeleteIngredient} />
            </div>
            <AddIngredientModal
                isOpen={isModalOpen}
                onClose={() => setIsModalOpen(false)}
                onSubmit={handleAddIngredient}
            />
        </div>
    );
}