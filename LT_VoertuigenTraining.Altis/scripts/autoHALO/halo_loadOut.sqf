private ["_backpack","_isBackpack","_packHolder","_class","_magazines","_weapons","_items"];

_backpack	= backpack player;
_isBackpack	= if(_backpack == "") then { false }else{ !(isNull (unitBackpack player)) };

_packHolder = if(_isBackpack) then { createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"] }else{ nil };
if(!isNil "_packHolder") then { _packHolder addBackpackCargoGlobal [_backpack, 1] };

// _class       = typeOf _backpack;
_class		= typeOf (unitbackpack player);
_magazines = getMagazineCargo (unitbackpack player);
_weapons   = getWeaponCargo (unitbackpack player);
_items       = getItemCargo (unitbackpack player);

removeBackpack player;
player addBackpack "B_Parachute";

// FREEFALL
waitUntil {animationState player == "HaloFreeFall_non" || (getPos player select 2) < 1};
if(!isNil "_packHolder") then {
	_packHolder attachTo [player,[-0.12,-0.02,-.74],"pelvis"];
	_packHolder setVectorDirAndUp [[0,-1,-0.05],[0,0,-1]];
};

// PARACHUTE
waitUntil {animationState player == "para_pilot" || (getPos player select 2) < 1};
if(!isNil "_packHolder") then {
	_packHolder attachTo [vehicle player,[-0.07,0.67,-0.13],"pelvis"];
	_packHolder setVectorDirAndUp [[0,-0.2,-1],[0,1,0]];
};

// Landed
waitUntil {isTouchingGround player || (getPos player select 2) < 1};
if(!isNil "_packHolder") then {
	detach _packHolder;
	deleteVehicle _packHolder;
};

if (_isBackpack) then {
	player addBackpack _class;
	clearAllItemsFromBackpack player;

	for "_i" from 0 to (count (_magazines select 0) - 1) do {
	    (unitBackpack player) addMagazineCargoGlobal [(_magazines select 0) select _i,(_magazines select 1) select _i]; //return the magazines
	};
	for "_i" from 0 to (count (_weapons select 0) - 1) do {
	    (unitBackpack player) addWeaponCargoGlobal [(_weapons select 0) select _i,(_weapons select 1) select _i]; //return the weapons
	};
	for "_i" from 0 to (count (_items select 0) - 1) do {
	    (unitBackpack player) addItemCargoGlobal [(_items select 0) select _i,(_items select 1) select _i]; //return the items
	};
};