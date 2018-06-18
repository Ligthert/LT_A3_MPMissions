private ["_pos","_operator","_tmpCenter","_tmpGrp","_mortar"];

// Where the mortar needs to hit.
_pos = _this select 0;
// The operator that needs to life
_operator = _this select 1;

if (!alive (vehicle _operator)) exitWith {hint "The tube is kaput now."};
if (!alive _operator) exitWith {hint "Aziz has stopped responding after a firefight. You think he's dead."};
// if (lt_mortar != 0) exitWith {hint "Aziz has fallen asleep and will load the mortar shortly."};

// _tmpCenter = createCenter sideLogic;
// _tmpGrp = createGroup _tmpCenter;
// _mortar = _tmpGrp createUnit ["ModuleOrdnance_F",_pos , [], 0, ""];
// _mortar setVariable ["type", "ModuleOrdnanceMortar_F_ammo"];

_operator commandArtilleryFire [_pos, "8Rnd_82mm_Mo_shells", 1];
(vehicle _operator) addMagazine "8Rnd_82mm_Mo_shells";

lt_mortar = 600;
