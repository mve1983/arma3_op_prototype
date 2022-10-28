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

comment "Add weapons";
player addWeapon "gm_mpiak74n_brn";
player addPrimaryWeaponItem "gm_30Rnd_545x39mm_B_7N6_ak74_org";
player addWeapon "gm_rpg7_wud";
player addSecondaryWeaponItem "gm_1Rnd_40mm_heat_pg7v_rpg7";
player addWeapon "gm_pm_blk";
player addHandgunItem "gm_8Rnd_9x18mm_B_pst_pm_blk";

comment "Add containers";
player forceAddUniform "gm_gc_army_uniform_soldier_80_str";
player addVest "gm_gc_army_vest_80_rifleman_str";
player addBackpack "gm_backpack_t10_parachute";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "gm_30Rnd_545x39mm_B_7N6_ak74_org";};
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_salineIV_500";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_splint";};
player addItemToVest "ACE_tourniquet";
player addItemToVest "ACE_MapTools";
for "_i" from 1 to 15 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_salineIV_250";};
player addItemToVest "MiniGrenade";
player addItemToVest "gm_smokeshell_wht_dm25";
player addItemToVest "gm_1Rnd_40mm_heat_pg7v_rpg7";
for "_i" from 1 to 2 do {player addItemToVest "gm_30Rnd_545x39mm_B_7N6_ak74_org";};
for "_i" from 1 to 3 do {player addItemToVest "gm_8Rnd_9x18mm_B_pst_pm_blk";};
player addHeadgear "gm_gc_army_headgear_m56_cover_str";

comment "Add items";
player linkItem "ItemMap";
player linkItem "gm_gc_compass_f73";
player linkItem "gm_watch_kosei_80";
player linkItem "TFAR_anprc152";
