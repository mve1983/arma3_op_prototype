if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_BG_Guerilla2_1";

comment "Add items";
player linkItem "ItemMap";
player linkItem "gm_gc_compass_f73";
player linkItem "gm_watch_kosei_80";
player linkItem "TFAR_anprc152";
