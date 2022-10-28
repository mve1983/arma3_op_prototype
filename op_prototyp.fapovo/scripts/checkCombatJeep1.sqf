_battle = 0;

while {_battle == 0} do {
    {
        if (behaviour _x == "COMBAT") then {
            _wps = waypoints jeepgroup;
            _wpscount = count _wps;
            {
                _counter = 0;
                if (_counter < _wpscount) then {
                    deleteWaypoint [jeepgroup, _counter];
                    _counter = _counter + 1;
                };
            } forEach _wps;
            
            _wpJeep = jeepgroup addWaypoint [position jeep1, 0];
            _wpJeep setwaypointType "SAD";
            _wpJeep setwaypointStatements ["true", ""];
            
            _battle = _battle + 1;
        };
    } forEach [jeep1D, jeep1G];
    
    sleep 5;
    
    if (_battle > 0) exitwith {};
};