import { X, Clock, Users, ChefHat } from 'lucide-react';

const getRecipesByCategory = (category, ingredientName) => {
    const recipes = {
        '육류': [
            {
                name: `${ingredientName} 김치찌개`,
                time: '30분',
                servings: '2-3인분',
                ingredients: [
                    { name: ingredientName, qty: 200 },
                    { name: '김치', qty: 300 },
                    { name: '두부', qty: 100 },
                    { name: '대파', qty: 50 },
                    { name: '고추가루', qty: 10 },
                    { name: '마늘', qty: 10 },
                ],
                steps: [
                    '김치를 먹기 좋은 크기로 썰어주세요.',
                    `${ingredientName}을(를) 한입 크기로 썰어주세요.`,
                    '냄비에 김치와 고기를 넣고 볶아주세요.',
                    '물을 붓고 끓여주세요.',
                    '두부와 양념을 넣고 더 끓이면 완성!',
                ],
            },
            {
                name: `${ingredientName} 볶음`,
                time: '20분',
                servings: '2인분',
                ingredients: [
                    { name: ingredientName, qty: 300 },
                    { name: '양파', qty: 100 },
                    { name: '당근', qty: 50 },
                    { name: '피망', qty: 50 },
                    { name: '간장', qty: 20 },
                    { name: '설탕', qty: 10 },
                    { name: '참기름', qty: 5 },
                ],
                steps: [
                    `${ingredientName}과 야채를 먹기 좋게 썰어주세요.`,
                    '팬에 기름을 두르고 고기를 먼저 볶아주세요.',
                    '야채를 넣고 함께 볶아주세요.',
                    '간장, 설탕으로 간을 맞추고 참기름을 넣어 완성!',
                ],
            },
        ],
        '채소': [
            {
                name: `${ingredientName} 무침`,
                time: '15분',
                servings: '2-3인분',
                ingredients: [
                    { name: ingredientName, qty: 200 },
                    { name: '고추가루', qty: 10 },
                    { name: '마늘', qty: 10 },
                    { name: '참기름', qty: 5 },
                    { name: '깨소금', qty: 5 },
                    { name: '간장', qty: 15 },
                ],
                steps: [
                    `${ingredientName}을(를) 깨끗이 씻어주세요.`,
                    '먹기 좋은 크기로 썰어주세요.',
                    '고추가루, 마늘, 참기름, 깨소금을 넣고 무쳐주세요.',
                    '간장으로 간을 맞추면 완성!',
                ],
            },
        ],
        '과일': [
            {
                name: `${ingredientName} 스무디`,
                time: '5분',
                servings: '1-2인분',
                ingredients: [
                    { name: ingredientName, qty: 200 },
                    { name: '요거트', qty: 100 },
                    { name: '우유', qty: 100 },
                    { name: '꿀', qty: 10 },
                ],
                steps: [
                    `${ingredientName}을(를) 씻고 적당한 크기로 잘라주세요.`,
                    '믹서기에 모든 재료를 넣어주세요.',
                    '부드러워질 때까지 갈아주세요.',
                    '컵에 담아 바로 드세요!',
                ],
            },
        ],
        '유제품': [
            {
                name: `${ingredientName} 스크램블`,
                time: '10분',
                servings: '1-2인분',
                ingredients: [
                    { name: ingredientName, qty: 100 },
                    { name: '계란', qty: 100 },
                    { name: '버터', qty: 10 },
                    { name: '소금', qty: 5 },
                    { name: '후추', qty: 2 },
                ],
                steps: [
                    '계란을 풀어주세요.',
                    `${ingredientName}과(와) 소금, 후추를 넣고 섞어주세요.`,
                    '팬에 버터를 녹이고 계란물을 부어주세요.',
                    '저어가며 익히고 파슬리로 장식하면 완성!',
                ],
            },
        ],
        '해산물': [
            {
                name: `${ingredientName} 구이`,
                time: '25분',
                servings: '2-3인분',
                ingredients: [
                    { name: ingredientName, qty: 300 },
                    { name: '소금', qty: 5 },
                    { name: '후추', qty: 2 },
                    { name: '레몬', qty: 30 },
                    { name: '올리브유', qty: 15 },
                    { name: '마늘', qty: 10 },
                ],
                steps: [
                    `${ingredientName}을(를) 깨끗이 손질해주세요.`,
                    '소금, 후추, 다진 마늘로 밑간을 해주세요.',
                    '팬에 올리브유를 두르고 구워주세요.',
                    '레몬즙을 뿌려 완성!',
                ],
            },
        ],
        '곡물': [
            {
                name: `${ingredientName} 밥`,
                time: '40분',
                servings: '3-4인분',
                ingredients: [
                    { name: ingredientName, qty: 300 },
                    { name: '물', qty: 400 },
                    { name: '소금', qty: 3 },
                ],
                steps: [
                    `${ingredientName}을(를) 깨끗이 씻어주세요.`,
                    '30분 정도 불려주세요.',
                    '물을 붓고 밥솥에 넣어주세요.',
                    '취사 버튼을 누르고 기다리면 완성!',
                ],
            },
        ],
        '조미료': [
            {
                name: `${ingredientName} 활용 양념장`,
                time: '5분',
                servings: '여러 번',
                ingredients: [
                    { name: ingredientName, qty: 30 },
                    { name: '간장', qty: 20 },
                    { name: '설탕', qty: 10 },
                    { name: '참기름', qty: 5 },
                    { name: '마늘', qty: 10 },
                ],
                steps: [
                    '모든 재료를 그릇에 담아주세요.',
                    `${ingredientName}을(를) 적당량 넣어주세요.`,
                    '잘 섞어주세요.',
                    '다양한 요리에 활용하세요!',
                ],
            },
        ],
    };

    return recipes[category] || [
        {
            name: `${ingredientName} 요리`,
            time: '20분',
            servings: '2인분',
            ingredients: [
                { name: ingredientName, qty: 100 },
                { name: '소금', qty: 5 },
                { name: '후추', qty: 2 },
            ],
            steps: [
                `${ingredientName}을(를) 손질해주세요.`,
                '적당한 조리법으로 요리해주세요.',
                '소금과 후추로 간을 맞추세요.',
                '맛있게 드세요!',
            ],
        },
    ];
};

export function RecipeModal({ isOpen, onClose, ingredient, onCook }) {
    if (!isOpen) return null;

    const recipes = getRecipesByCategory(ingredient.category, ingredient.name);

    const handleCook = (recipe) => {
        onCook(recipe.ingredients);
        onClose();
    };

    return (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-4xl max-h-[90vh] overflow-hidden flex flex-col">
                <div className="flex items-center justify-between px-6 py-4 border-b border-gray-200 bg-gradient-to-r from-blue-50 to-white">
                    <div>
                        <h2 className="text-2xl font-bold text-gray-900 flex items-center gap-2">
                            <ChefHat className="w-7 h-7 text-blue-600" />
                            {ingredient.name} 추천 레시피
                        </h2>
                        <p className="text-sm text-gray-600 mt-1">{ingredient.quantity}{ingredient.unit} 보유 중</p>
                    </div>
                    <button onClick={onClose} className="text-gray-400 hover:text-gray-600 transition-colors">
                        <X className="w-6 h-6" />
                    </button>
                </div>

                <div className="flex-1 overflow-y-auto p-6">
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                        {recipes.map((recipe, index) => (
                            <div key={index} className="bg-white border-2 border-gray-200 rounded-xl p-5 hover:border-blue-300 hover:shadow-lg transition-all flex flex-col">
                                <h3 className="text-xl font-bold text-gray-900 mb-3">{recipe.name}</h3>
                                <div className="flex items-center gap-4 mb-4 text-sm text-gray-600">
                                    <div className="flex items-center gap-1">
                                        <Clock className="w-4 h-4" />
                                        <span>{recipe.time}</span>
                                    </div>
                                    <div className="flex items-center gap-1">
                                        <Users className="w-4 h-4" />
                                        <span>{recipe.servings}</span>
                                    </div>
                                </div>
                                <div className="mb-4">
                                    <h4 className="font-semibold text-gray-800 mb-2 text-sm">필요한 재료:</h4>
                                    <div className="flex flex-wrap gap-2">
                                        {recipe.ingredients.map((ing, idx) => (
                                            <span key={idx} className={`px-3 py-1 rounded-full text-xs ${
                                                ing.name === ingredient.name
                                                    ? 'bg-blue-100 text-blue-700 font-semibold'
                                                    : 'bg-gray-100 text-gray-700'
                                            }`}>
                        {ing.name} {ing.qty}g
                      </span>
                                        ))}
                                    </div>
                                </div>
                                <div className="flex-1">
                                    <h4 className="font-semibold text-gray-800 mb-2 text-sm">조리 순서:</h4>
                                    <ol className="space-y-1.5">
                                        {recipe.steps.map((step, idx) => (
                                            <li key={idx} className="text-sm text-gray-700 flex gap-2">
                                                <span className="font-semibold text-blue-600 flex-shrink-0">{idx + 1}.</span>
                                                <span>{step}</span>
                                            </li>
                                        ))}
                                    </ol>
                                </div>

                                {/* 요리 완료 버튼 */}
                                <button
                                    onClick={() => handleCook(recipe)}
                                    className="mt-4 w-full py-3 bg-green-500 hover:bg-green-600 text-white font-semibold rounded-xl transition-colors flex items-center justify-center gap-2"
                                >
                                    <ChefHat className="w-5 h-5" />
                                    요리 완료
                                </button>
                            </div>
                        ))}
                    </div>
                </div>

                <div className="px-6 py-4 bg-gray-50 border-t border-gray-200">
                    <button onClick={onClose} className="w-full px-5 py-2.5 text-white bg-blue-600 rounded-lg hover:bg-blue-700 transition-colors font-medium">
                        닫기
                    </button>
                </div>
            </div>
        </div>
    );
}