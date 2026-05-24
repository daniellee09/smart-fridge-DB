import { parseRecipeSteps } from '../utils/recipeSteps';

export default function RecipeSteps({ description }) {
    const steps = parseRecipeSteps(description);

    if (steps.length === 0) {
        return <p className="text-sm text-gray-400">조리 방법 정보가 없습니다.</p>;
    }

    return (
        <div className="space-y-3">
            {steps.map((step, i) => (
                <div key={i} className="flex gap-3 items-start">
                    <span className="w-6 h-6 rounded-full bg-toss-blue text-white text-xs font-semibold flex items-center justify-center flex-shrink-0 mt-0.5">
                        {i + 1}
                    </span>
                    <p className="text-sm text-gray-700 leading-relaxed">{step}</p>
                </div>
            ))}
        </div>
    );
}
