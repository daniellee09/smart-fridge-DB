import { NavLink } from 'react-router-dom';
import { Refrigerator, ChefHat, ClipboardList } from 'lucide-react';

const NAV_ITEMS = [
    { to: '/fridge', label: '냉장고', Icon: Refrigerator },
    { to: '/recipes', label: '레시피', Icon: ChefHat },
    { to: '/history', label: '요리 이력', Icon: ClipboardList },
];

function Logo() {
    return (
        <div className="flex items-center gap-2.5">
            <div className="w-8 h-8 rounded-xl bg-gradient-to-br from-toss-blue to-[#5ba3ff] flex items-center justify-center shadow-sm">
                <Refrigerator className="w-4 h-4 text-white" />
            </div>
            <span style={{ fontFamily: "'Pretendard', sans-serif" }} className="text-[15px] tracking-tight leading-none">
                <span style={{ fontWeight: 600 }} className="text-toss-blue">스마트</span>
                <span style={{ fontWeight: 600 }} className="text-gray-900">냉장고</span>
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
