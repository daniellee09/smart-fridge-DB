import { NavLink } from 'react-router-dom';
import { ChefHat, ClipboardList, Refrigerator } from 'lucide-react';

const NAV_ITEMS = [
    { to: '/fridge', label: '냉장고', Icon: Refrigerator },
    { to: '/recipes', label: '레시피', Icon: ChefHat },
    { to: '/history', label: '요리 이력', Icon: ClipboardList },
];

function FridgeIcon() {
    return (
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="5" y="2" width="14" height="20" rx="3" fill="#dbeafe" stroke="#3182F6" strokeWidth="2" strokeLinejoin="round"/>
            <path d="M5 9.5h14" stroke="#3182F6" strokeWidth="2" strokeLinecap="round"/>
            <path d="M9 5.5v2.5" stroke="#1d4ed8" strokeWidth="2.2" strokeLinecap="round"/>
            <path d="M9 13v3.5" stroke="#1d4ed8" strokeWidth="2.2" strokeLinecap="round"/>
        </svg>
    );
}

function Logo() {
    return (
        <div className="flex items-center gap-2.5">
            <FridgeIcon />
            <span style={{ fontFamily: "'Pretendard', sans-serif" }} className="text-[15px] tracking-tight leading-none">
                <span style={{ fontWeight: 700 }} className="text-gray-900">스마트</span>
                <span style={{ fontWeight: 700 }} className="text-[#1d4ed8]">냉장고</span>
            </span>
        </div>
    );
}

export default function Sidebar() {
    return (
        <aside className="w-56 min-h-screen bg-sidebar-bg border-r border-gray-100 sticky top-0 flex flex-col">
            <div className="px-5 py-5 mb-2">
                <Logo />
            </div>

            <nav className="flex-1 px-3">
                {NAV_ITEMS.map(({ to, label, Icon }) => (
                    <NavLink
                        key={to}
                        to={to}
                        className={({ isActive }) =>
                            `relative flex items-center gap-3 px-4 py-2.5 rounded-xl mb-0.5 text-sm font-medium transition-colors ${
                                isActive
                                    ? 'bg-toss-blue/10 text-toss-blue'
                                    : 'text-gray-500 hover:bg-gray-100 hover:text-gray-800'
                            }`
                        }
                    >
                        {({ isActive }) => (
                            <>
                                {isActive && (
                                    <span className="absolute left-0 top-1/2 -translate-y-1/2 w-1 h-5 bg-toss-blue rounded-r-full" />
                                )}
                                <Icon className="w-4 h-4 flex-shrink-0" />
                                {label}
                            </>
                        )}
                    </NavLink>
                ))}
            </nav>
        </aside>
    );
}
