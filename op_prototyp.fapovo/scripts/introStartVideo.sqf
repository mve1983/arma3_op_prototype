diwako_dui_nametags_enabled = false;
diwako_dui_enable_compass = false;
diwako_dui_show_squadbar = false;
diwako_dui_namelist = false;

playMusic "intro";
titleCut ["", "BLACK in", 3];

_c = "camera" camCreate [0, 0, 0];
_c cameraEffect ["internal", "back"];
_c attachto [cam1, [0, 0, 0]];
_c camPrepareTarget plane1;
_c camCommitPrepared 0;
camUseNVG false;
showCinemaBorder true;

sleep 20;
[parsetext "<t font='PuristaBold' size='2'>OP: Prototyp</t><br />by Posenpaul", true, nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
sleep 10;

titleCut ["", "BLACK in", 1];

_c attachto [cam2, [0, 0, 0]];
_c camPrepareTarget plane1;
_c camCommitPrepared 0;
camUseNVG false;

sleep 25;

_c cameraEffect ["terminate", "back"];
camDestroy _c;
titleCut ["", "BLACK in", 3];

diwako_dui_nametags_enabled = true;
diwako_dui_enable_compass = true;
diwako_dui_show_squadbar = true;
diwako_dui_namelist = true;