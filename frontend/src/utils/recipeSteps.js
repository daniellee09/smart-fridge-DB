export function parseRecipeSteps(description) {
    if (!description) return [];
    if (/\[단계\s*\d+\]/.test(description)) {
        return description
            .split(/(?=\[단계\s*\d+\])/)
            .map((chunk) => chunk.replace(/\[단계\s*\d+\]/, '').replace(/\s*\n\s*/g, ' ').trim())
            .filter(Boolean);
    }
    return description.split('\n').map((s) => s.trim()).filter(Boolean);
}
