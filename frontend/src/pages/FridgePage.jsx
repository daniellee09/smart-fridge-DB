import { RefrigeratorView } from '../components/RefrigeratorView';
import { Plus } from 'lucide-react';

export default function FridgePage({ ingredients, onDelete, onCook, onOpenModal }) {
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