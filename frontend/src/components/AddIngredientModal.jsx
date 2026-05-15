import { useState } from 'react';
import { X, Calendar, Snowflake, Droplet, Cloud } from 'lucide-react';

export function AddIngredientModal({ isOpen, onClose, onSubmit }) {
    const [formData, setFormData] = useState({
        name: '',
        category: '',
        quantity: '',
        unit: 'g',
        storageMethod: 'refrigerated',
        purchaseDate: '',
        expiryDate: '',
    });

    const handleSubmit = (e) => {
        e.preventDefault();
        onSubmit(formData);
        onClose();
    };

    const handleCancel = () => {
        setFormData({
            name: '',
            category: '',
            quantity: '',
            unit: 'g',
            storageMethod: 'refrigerated',
            purchaseDate: '',
            expiryDate: '',
        });
        onClose();
    };

    if (!isOpen) return null;

    return (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-3xl">
                <div className="flex items-center justify-between px-6 py-4 border-b border-gray-200">
                    <h2 className="text-2xl font-semibold text-gray-900">새 식재료 등록</h2>
                    <button onClick={handleCancel} className="text-gray-400 hover:text-gray-600 transition-colors">
                        <X className="w-6 h-6" />
                    </button>
                </div>

                <form onSubmit={handleSubmit}>
                    <div className="p-6">
                        <div className="grid grid-cols-2 gap-8">
                            <div className="space-y-5">
                                <h3 className="text-lg font-semibold text-gray-700 mb-4">기본 정보</h3>

                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">식재료명</label>
                                    <input
                                        type="text"
                                        value={formData.name}
                                        onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                                        placeholder="예: 삼겹살"
                                        className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all"
                                        required
                                    />
                                </div>

                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">카테고리</label>
                                    <select
                                        value={formData.category}
                                        onChange={(e) => setFormData({ ...formData, category: e.target.value })}
                                        className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all bg-white"
                                        required
                                    >
                                        <option value="">선택해주세요</option>
                                        <option value="육류">육류</option>
                                        <option value="채소">채소</option>
                                        <option value="과일">과일</option>
                                        <option value="유제품">유제품</option>
                                        <option value="해산물">해산물</option>
                                        <option value="곡물">곡물</option>
                                        <option value="조미료">조미료</option>
                                        <option value="기타">기타</option>
                                    </select>
                                </div>

                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">수량 / 단위</label>
                                    <div className="flex gap-3">
                                        <input
                                            type="number"
                                            value={formData.quantity}
                                            onChange={(e) => setFormData({ ...formData, quantity: e.target.value })}
                                            placeholder="600"
                                            className="flex-1 px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all"
                                            required
                                        />
                                        <select
                                            value={formData.unit}
                                            onChange={(e) => setFormData({ ...formData, unit: e.target.value })}
                                            className="w-24 px-3 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all bg-white"
                                        >
                                            <option value="g">g</option>
                                            <option value="kg">kg</option>
                                            <option value="ml">ml</option>
                                            <option value="L">L</option>
                                            <option value="개">개</option>
                                            <option value="팩">팩</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div className="space-y-5">
                                <h3 className="text-lg font-semibold text-gray-700 mb-4">보관 정보</h3>

                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-3">보관 방식</label>
                                    <div className="grid grid-cols-3 gap-3">
                                        {[
                                            { value: 'frozen', label: '냉동', Icon: Snowflake },
                                            { value: 'refrigerated', label: '냉장', Icon: Droplet },
                                            { value: 'room-temp', label: '실온', Icon: Cloud },
                                        ].map(({ value, label, Icon }) => (
                                            <button
                                                key={value}
                                                type="button"
                                                onClick={() => setFormData({ ...formData, storageMethod: value })}
                                                className={`flex flex-col items-center justify-center py-4 px-3 rounded-lg border-2 transition-all ${
                                                    formData.storageMethod === value
                                                        ? 'border-blue-500 bg-blue-50 shadow-md'
                                                        : 'border-gray-200 bg-white hover:border-gray-300'
                                                }`}
                                            >
                                                <Icon className={`w-6 h-6 mb-2 ${formData.storageMethod === value ? 'text-blue-500' : 'text-gray-400'}`} />
                                                <span className={`text-sm font-medium ${formData.storageMethod === value ? 'text-blue-700' : 'text-gray-600'}`}>
                          {label}
                        </span>
                                            </button>
                                        ))}
                                    </div>
                                </div>

                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">구매일</label>
                                    <div className="relative">
                                        <input
                                            type="date"
                                            value={formData.purchaseDate}
                                            onChange={(e) => setFormData({ ...formData, purchaseDate: e.target.value })}
                                            className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all"
                                            required
                                        />
                                        <Calendar className="absolute right-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400 pointer-events-none" />
                                    </div>
                                </div>

                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">유통기한</label>
                                    <div className="relative">
                                        <input
                                            type="date"
                                            value={formData.expiryDate}
                                            onChange={(e) => setFormData({ ...formData, expiryDate: e.target.value })}
                                            className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all"
                                            required
                                        />
                                        <Calendar className="absolute right-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400 pointer-events-none" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="flex items-center justify-end gap-3 px-6 py-4 bg-gray-50 rounded-b-2xl border-t border-gray-200">
                        <button type="button" onClick={handleCancel} className="px-5 py-2.5 text-gray-700 bg-white border border-gray-300 rounded-lg hover:bg-gray-50 transition-colors font-medium">
                            취소
                        </button>
                        <button type="submit" className="px-5 py-2.5 text-white bg-blue-600 rounded-lg hover:bg-blue-700 transition-colors font-medium shadow-sm">
                            등록하기
                        </button>
                    </div>
                </form>
            </div>
        </div>
    );
}