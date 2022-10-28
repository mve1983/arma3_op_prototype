_wp1 = helievacgroup addWaypoint [position padEvac, 0];
_wp1 setwaypointType "TR UNload";
_wp1 setwaypointBehaviour "CARELESS";
_wp1 setwaypointStatements ["true", ""];

while {
    ({
        (_x in heli1) && (alive _x)
    } count [s1, s2, s3, s4, s5, s6, s7, s8] !=
    {
        alive _x
    } count [s1, s2, s3, s4, s5, s6, s7, s8]) || !(box1 in (heli1 getVariable ["ace_cargo_loaded", []]))
} do {
    sleep 1;
};

heli1 lock true;
playMusic "outro";

diwako_dui_nametags_enabled = false;
diwako_dui_enable_compass = false;
diwako_dui_show_squadbar = false;
diwako_dui_namelist = false;

titleCut ["", "BLACK in", 3];

_c = "camera" camCreate [0, 0, 0];
_c cameraEffect ["internal", "back"];
_c attachto [heli1, [0, 0, 0]];
_c camPrepareTarget heli1;
_c camCommitPrepared 0;
camUseNVG false;
showCinemaBorder true;

_wp2 = helievacgroup addWaypoint [position padFinal, 0];
_wp2 setwaypointType "TR UNload";
_wp2 setwaypointBehaviour "CARELESS";
_wp2 setwaypointStatements ["true", "heli1 lock false;
    heli1 setFuel 0;
"];

_side = 10;
_height = 10;
_counter = 0;

while {_counter < 1600000} do {
    _side = _side + 0.0001;
    _height = _height + 0.0001;
    _counter = _counter + 1;
    _c attachto [heli1, [0, _side, _height]];
    sleep 0.00005;
};

"EveryoneWon" call BIS_fnc_endMissionServer;