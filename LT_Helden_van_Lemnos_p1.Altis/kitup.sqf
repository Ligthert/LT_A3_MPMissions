_unit = _this select 0;

if (side _unit != independent) exitWith{};

_unit enableFatigue false;

// Remove NVG
_unit unassignItem "NVGoggles_INDEP";
_unit removeItem "NVGoggles_INDEP";

// Swap IR for Flashlight
_unit removePrimaryWeaponItem "acc_pointer_IR";
_unit addItem "acc_flashlight";
_unit addPrimaryWeaponItem "acc_flashlight";

// Swap on the lights
(group _unit) enableGunLights "forceon";
_unit enableGunLights "forceon";