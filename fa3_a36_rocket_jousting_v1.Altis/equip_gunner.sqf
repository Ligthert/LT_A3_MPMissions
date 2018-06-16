comment "Exported from Arsenal by Ralian";

comment "Remove existing items";
removeAllWeapons __this;
removeAllItems __this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "U_BG_Guerilla2_3";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_blue";};
_this addItemToUniform "SmokeShellBlue";
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addItemToUniform "SmokeShellGreen";
_this addItemToUniform "SmokeShellRed";
_this addVest "V_PlateCarrier2_rgr";
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {_this addItemToVest "APERSMine_Range_Mag";};
for "_i" from 1 to 3 do {_this addItemToVest "30Rnd_9x21_Red_Mag";};
for "_i" from 1 to 2 do {_this addItemToVest "6Rnd_GreenSignal_F";};
for "_i" from 1 to 2 do {_this addItemToVest "6Rnd_RedSignal_F";};
_this addItemToVest "30Rnd_9x21_Mag";
_this addBackpack "B_AssaultPack_khk";
for "_i" from 1 to 4 do {_this addItemToBackpack "RPG32_HE_F";};
_this addHeadgear "H_Beret_blk";
_this addGoggles "G_Tactical_Black";

comment "Add weapons";
_this addWeapon "SMG_02_F";
_this addPrimaryWeaponItem "muzzle_snds_L";
_this addPrimaryWeaponItem "acc_flashlight";
_this addPrimaryWeaponItem "optic_LRPS";
_this addWeapon "launch_RPG32_F";
_this addWeapon "hgun_Pistol_Signal_F";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";