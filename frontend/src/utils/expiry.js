export function daysUntilExpiry(expireDate) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    return Math.ceil((new Date(expireDate) - today) / 86400000);
}

export function expiryStatus(expireDate) {
    const days = daysUntilExpiry(expireDate);
    return { days, isExpired: days < 0, isExpiringSoon: days >= 0 && days <= 3 };
}
