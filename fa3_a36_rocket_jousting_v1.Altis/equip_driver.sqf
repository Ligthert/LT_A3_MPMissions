comment "Exported from Arsenal by Ralian";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "U_BG_Guerilla2_3";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 4 do {_this addItemToUniform "SmokeShellRed";};
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_red";};
_this addVest "V_PlateCarrier2_rgr";
for "_i" from 1 to 4 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 10 do {_this addItemToVest "6Rnd_45ACP_Cylinder";};
for "_i" from 1 to 3 do {_this addItemToVest "APERSBoundingMine_Range_Mag";};
_this addBackpack "B_AssaultPack_khk";
_this addItemToBackpack "ToolKit";
_this addItemToBackpack "SatchelCharge_Remote_Mag";
_this addHeadgear "H_Beret_blk";
_this addGoggles "G_Tactical_Black";

comment "Add weapons";
_this addWeapon "hgun_Pistol_heavy_02_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this linkItem "NVGoggles_OPFOR";