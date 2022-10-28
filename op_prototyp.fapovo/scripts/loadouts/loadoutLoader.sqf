switch (typeOf player) do
{
    case "O_Soldier_TL_F": {
        player execVM "scripts\loadouts\tl.sqf";
    };
    case "O_Soldier_AR_F": {
        player execVM "scripts\loadouts\lmg.sqf";
    };
    case "O_Soldier_LAT_F": {
        player execVM "scripts\loadouts\at.sqf";
    };
    case "O_Soldier_F": {
        player execVM "scripts\loadouts\rf.sqf";
    };
    case "O_medic_F": {
        player execVM "scripts\loadouts\medic.sqf";
    };
	case "VirtualCurator_F": {hint "";};
	default {
        player execVM "scripts\loadouts\empty.sqf";
    };
};