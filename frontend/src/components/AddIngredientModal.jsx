import { useState, useRef, useEffect } from 'react';
import { X, Calendar, Snowflake, Droplet, Cloud, Search } from 'lucide-react';
import { searchIngredients } from '../api/ingredient';
import { addFridgeItem } from '../api/fridge';

export function AddIngredientModal({ isOpen, onClose, onSubmit }) {
    const [keyword, setKeyword] = useState('');
    const [selectedIngredient, setSelectedIngredient] = useState(null);
    const [searchResults, setSearchResults] = useState([]);
    const [showDropdown, setShowDropdown] = useState(false);
    const [formData, setFormData] = useState({
        quantity: '',
        unit: 'g',
        storageMethod: 'refrigerated',
        purchaseDate: '',
    });

    const dropdownRef = useRef(null);

    useEffect(() => {
        const handleClickOutside = (e) => {
            if (dropdownRef.current && !dropdownRef.current.contains(e.target)) {
                setShowDropdown(false);
            }
        };
        document.addEventListener('mousedown', handleClickOutside);
        return () => document.removeEventListener('mousedown', handleClickOutside);
    }, []);

    const handlePurchaseDateChange = (date) => {
        setFormData((prev) => ({ ...prev, purchaseDate: date }));
    };

    const handleSelect = (ingredient) => {
        setSelectedIngredient(ingredient);
        setKeyword(ingredient.name);
        setShowDropdown(false);
        setSearchResults([]);
    };
    const handleSubmit = async (e) => {
        e.preventDefault();
        if (!selectedIngredient) return;
        try {
            await addFridgeItem({
                ingredientId: selectedIngredient.id,
                storageType: formData.storageMethod === 'frozen' ? '냉동' :
                    formData.storageMethod === 'refrigerated' ? '냉장' : '실온',
                addDate: formData.purchaseDate,
                userUnit: formData.unit,
                userQuantity: parseFloat(formData.quantity),
            });
            onSubmit();
            handleCancel();
        } catch (err) {
            console.error(err);
            alert('식재료 추가에 실패했어요. 다시 시도해주세요.');
        }
    };
    const handleCancel = () => {
        setKeyword('');
        setSelectedIngredient(null);
        setShowDropdown(false);
        setSearchResults([]);
        setFormData({
            quantity: '',
            unit: 'g',
            storageMethod: 'refrigerated',
            purchaseDate: '',
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

                            {/* 왼쪽 - 기본 정보 */}
                            <div className="space-y-5">
                                <h3 className="text-lg font-semibold text-gray-700 mb-4">기본 정보</h3>

                                {/* 식재료 검색 */}
                                <div className="relative" ref={dropdownRef}>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">식재료 검색</label>
                                    <div className="relative">
                                        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
                                        <input
                                            type="text"
                                            value={keyword}
                                            onChange={async (e) => {
                                                setKeyword(e.target.value);
                                                setSelectedIngredient(null);
                                                setShowDropdown(true);
                                                if (e.target.value.length > 0) {
                                                    try {
                                                        const results = await searchIngredients(e.target.value);
                                                        setSearchResults(results);
                                                    } catch (err) {
                                                        console.error(err);
                                                    }
                                                } else {
                                                    setSearchResults([]);
                                                }
                                            }}
                                            onFocus={() => setShowDropdown(true)}
                                            placeholder="예: 삼겹살"
                                            className="w-full pl-9 pr-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all"
                                            required
                                        />
                                    </div>

                                    {/* 드롭다운 */}
                                    {showDropdown && searchResults.length > 0 && (
                                        <div className="absolute z-10 w-full mt-1 bg-white border border-gray-200 rounded-lg shadow-lg max-h-48 overflow-y-auto">
                                            {searchResults.map((item) => (
                                                <button
                                                    key={item.id}
                                                    type="button"
                                                    onClick={() => handleSelect(item)}
                                                    className="w-full flex items-center justify-between px-4 py-2.5 hover:bg-blue-50 transition-colors text-left"
                                                >
                                                    <span className="text-sm font-medium text-gray-800">{item.name}</span>
                                                    <span className="text-xs text-gray-400 bg-gray-100 px-2 py-0.5 rounded-full">{item.categoryName}</span>
                                                </button>
                                            ))}
                                        </div>
                                    )}
                                </div>

                                {/* 수량/단위 */}
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

                            {/* 오른쪽 - 보관 정보 */}
                            <div className="space-y-5">
                                <h3 className="text-lg font-semibold text-gray-700 mb-4">보관 정보</h3>

                                {/* 보관 방식 */}
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

                                {/* 구매일 */}
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">구매일</label>
                                    <div className="relative">
                                        <input
                                            type="date"
                                            value={formData.purchaseDate}
                                            onChange={(e) => handlePurchaseDateChange(e.target.value)}
                                            className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent outline-none transition-all"
                                            required
                                        />
                                        <Calendar className="absolute right-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400 pointer-events-none" />
                                    </div>
                                </div>

                                {/* 유통기한 */}
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-2">
                                        유통기한
                                        <span className="ml-2 text-xs text-blue-500">(자동 계산)</span>
                                    </label>
                                    <div className="relative">
                                        <input
                                            type="text"
                                            value="등록 후 자동 계산됩니다"
                                            readOnly
                                            className="w-full px-4 py-2.5 border border-gray-200 rounded-lg bg-gray-50 text-gray-400 cursor-not-allowed outline-none"
                                        />
                                    </div>
                                    <p className="text-xs text-gray-400 mt-1">
                                        카테고리 기본 유통기한 기준으로 자동 산출돼요
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="flex items-center justify-end gap-3 px-6 py-4 bg-gray-50 rounded-b-2xl border-t border-gray-200">
                        <button type="button" onClick={handleCancel} className="px-5 py-2.5 text-gray-700 bg-white border border-gray-300 rounded-lg hover:bg-gray-50 transition-colors font-medium">
                            취소
                        </button>
                        <button
                            type="submit"
                            disabled={!selectedIngredient}
                            className={`px-5 py-2.5 text-white rounded-lg transition-colors font-medium shadow-sm ${
                                selectedIngredient
                                    ? 'bg-blue-600 hover:bg-blue-700'
                                    : 'bg-gray-300 cursor-not-allowed'
                            }`}
                        >
                            등록하기
                        </button>
                    </div>
                </form>
            </div>
        </div>
    );
}