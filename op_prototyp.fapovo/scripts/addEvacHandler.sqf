{
    ["ace_firedplayer", {
        params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
        
        if (_ammo == "gm_smokeshell_grn_dm21") then {
            _posEvac = _unit modeltoWorld[0, 20, 0];
            
            [padEvac, _posEvac] remoteExec ["setPos", 2];
            "scripts\evac.sqf" remoteExec ["execVM", 2];
        };
    }] call CBA_fnc_addEventHandler;
} forEach allplayers;