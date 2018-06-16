_unit = _this select 0;

if (side _unit != east) exitWith{};

_unit enableFatigue false;

removeAllWeapons _unit;

_unit addWeaponGlobal "arifle_Katiba_C_F";
_unit addMagazines ["30Rnd_65x39_caseless_green_mag_Tracer",8];
_unit addItem "acc_flashlight";
_unit addPrimaryWeaponItem "acc_flashlight";

(group _unit) enableGunLights "forceon";