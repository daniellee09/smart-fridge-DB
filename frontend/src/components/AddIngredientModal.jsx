import { useState, useRef, useEffect } from 'react';
import { X, Snowflake, Droplet, Cloud, Search } from 'lucide-react';
import { searchIngredients } from '../api/ingredient';
import { addFridgeItem } from '../api/fridge';

const STORAGE_OPTIONS = [
    { value: 'frozen', label: '냉동', Icon: Snowflake },
    { value: 'refrigerated', label: '냉장', Icon: Droplet },
    { value: 'room-temp', label: '실온', Icon: Cloud },
];

const UNIT_OPTIONS = ['g', 'kg', 'ml', 'L', '개', '팩', '묶음', '봉'];

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

    const [visible, setVisible] = useState(false);
    const dropdownRef = useRef(null);

    useEffect(() => {
        if (isOpen) {
            const t = setTimeout(() => setVisible(true), 10);
            return () => clearTimeout(t);
        } else {
            setVisible(false);
        }
    }, [isOpen]);

    useEffect(() => {
        const handleClickOutside = (e) => {
            if (dropdownRef.current && !dropdownRef.current.contains(e.target)) {
                setShowDropdown(false);
            }
        };
        document.addEventListener('mousedown', handleClickOutside);
        return () => document.removeEventListener('mousedown', handleClickOutside);
    }, []);

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
        setFormData({ quantity: '', unit: 'g', storageMethod: 'refrigerated', purchaseDate: '' });
        onClose();
    };

    if (!isOpen) return null;

    const inputClass = "w-full px-4 py-2.5 bg-gray-50 border border-gray-200 rounded-xl text-sm focus:ring-2 focus:ring-toss-blue/30 focus:border-toss-blue focus:bg-white outline-none transition-all";

    return (
        <div className={`fixed inset-0 flex items-center justify-center p-4 z-50 transition-opacity duration-200 ${visible ? 'opacity-100' : 'opacity-0'}`}>
            <div className="absolute inset-0 bg-black/40" onClick={handleCancel} />
            <div className={`relative bg-white rounded-2xl shadow-2xl w-full max-w-2xl overflow-hidden transition-all duration-300 ${visible ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-6'}`}>
                {/* 헤더 */}
                <div className="flex items-center justify-between px-6 py-4 border-b border-gray-100">
                    <h2 className="font-bold text-gray-900">새 식재료 등록</h2>
                    <button onClick={handleCancel} className="p-1.5 text-gray-400 hover:text-gray-600 hover:bg-gray-100 rounded-lg transition-colors">
                        <X className="w-5 h-5" />
                    </button>
                </div>

                <form onSubmit={handleSubmit}>
                    <div className="p-6 grid grid-cols-2 gap-6">

                        {/* 왼쪽 - 기본 정보 */}
                        <div className="space-y-4">
                            <p className="text-xs font-semibold text-gray-400 uppercase tracking-wide">기본 정보</p>

                            {/* 식재료 검색 */}
                            <div className="relative" ref={dropdownRef}>
                                <label className="block text-sm font-medium text-gray-700 mb-1.5">식재료</label>
                                <div className="relative">
                                    <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-300" />
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
                                        className={`pl-9 pr-4 ${inputClass}`}
                                        required
                                    />
                                </div>
                                {showDropdown && searchResults.length > 0 && (
                                    <div className="absolute z-10 w-full mt-1 bg-white border border-gray-100 rounded-xl shadow-lg max-h-44 overflow-y-auto">
                                        {searchResults.map((item) => (
                                            <button
                                                key={item.id}
                                                type="button"
                                                onClick={() => handleSelect(item)}
                                                className="w-full flex items-center justify-between px-4 py-2.5 hover:bg-toss-blue/5 transition-colors text-left"
                                            >
                                                <span className="text-sm font-medium text-gray-800">{item.name}</span>
                                                <span className="text-xs text-gray-400 bg-gray-100 px-2 py-0.5 rounded-full">{item.categoryName}</span>
                                            </button>
                                        ))}
                                    </div>
                                )}
                            </div>

                            {/* 수량 / 단위 */}
                            <div>
                                <label className="block text-sm font-medium text-gray-700 mb-1.5">수량 / 단위</label>
                                <div className="flex gap-2">
                                    <input
                                        type="number"
                                        value={formData.quantity}
                                        onChange={(e) => setFormData({ ...formData, quantity: e.target.value })}
                                        placeholder="600"
                                        className={`flex-1 ${inputClass}`}
                                        required
                                    />
                                    <select
                                        value={formData.unit}
                                        onChange={(e) => setFormData({ ...formData, unit: e.target.value })}
                                        className="w-24 px-3 py-2.5 bg-gray-50 border border-gray-200 rounded-xl text-sm focus:ring-2 focus:ring-toss-blue/30 focus:border-toss-blue outline-none transition-all"
                                    >
                                        {UNIT_OPTIONS.map((u) => <option key={u} value={u}>{u}</option>)}
                                    </select>
                                </div>
                            </div>
                        </div>

                        {/* 오른쪽 - 보관 정보 */}
                        <div className="space-y-4">
                            <p className="text-xs font-semibold text-gray-400 uppercase tracking-wide">보관 정보</p>

                            {/* 보관 방식 */}
                            <div>
                                <label className="block text-sm font-medium text-gray-700 mb-1.5">보관 방식</label>
                                <div className="grid grid-cols-3 gap-2">
                                    {STORAGE_OPTIONS.map(({ value, label, Icon }) => (
                                        <button
                                            key={value}
                                            type="button"
                                            onClick={() => setFormData({ ...formData, storageMethod: value })}
                                            className={`flex flex-col items-center justify-center py-3 px-2 rounded-xl border-2 transition-all ${
                                                formData.storageMethod === value
                                                    ? 'border-toss-blue bg-toss-blue/5'
                                                    : 'border-gray-100 bg-gray-50 hover:border-gray-200'
                                            }`}
                                        >
                                            <Icon className={`w-5 h-5 mb-1.5 ${formData.storageMethod === value ? 'text-toss-blue' : 'text-gray-400'}`} />
                                            <span className={`text-xs font-medium ${formData.storageMethod === value ? 'text-toss-blue' : 'text-gray-500'}`}>
                                                {label}
                                            </span>
                                        </button>
                                    ))}
                                </div>
                            </div>

                            {/* 구매일 */}
                            <div>
                                <label className="block text-sm font-medium text-gray-700 mb-1.5">구매일</label>
                                <input
                                    type="date"
                                    value={formData.purchaseDate}
                                    onChange={(e) => setFormData({ ...formData, purchaseDate: e.target.value })}
                                    className={inputClass}
                                    required
                                />
                            </div>

                            {/* 유통기한 */}
                            <div>
                                <label className="block text-sm font-medium text-gray-700 mb-1.5">
                                    유통기한
                                    <span className="ml-2 text-xs text-toss-blue font-normal">자동 계산</span>
                                </label>
                                <input
                                    type="text"
                                    value="등록 후 자동 계산됩니다"
                                    readOnly
                                    className="w-full px-4 py-2.5 bg-gray-50 border border-gray-100 rounded-xl text-sm text-gray-400 cursor-not-allowed outline-none"
                                />
                            </div>
                        </div>
                    </div>

                    {/* 푸터 */}
                    <div className="flex items-center justify-end gap-3 px-6 py-4 border-t border-gray-100">
                        <button
                            type="button"
                            onClick={handleCancel}
                            className="px-5 py-2.5 text-gray-600 bg-gray-100 hover:bg-gray-200 rounded-xl transition-colors text-sm font-medium"
                        >
                            취소
                        </button>
                        <button
                            type="submit"
                            disabled={!selectedIngredient}
                            className={`px-5 py-2.5 text-white rounded-xl transition-colors text-sm font-medium ${
                                selectedIngredient
                                    ? 'bg-toss-blue hover:bg-toss-blue-hover'
                                    : 'bg-gray-200 text-gray-400 cursor-not-allowed'
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
