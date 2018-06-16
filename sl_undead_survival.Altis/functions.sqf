playersInRange = {
	private ["_players","_pos","_range"];

	// Initializing
	_pos = _this select 0;
	_range	= _this select 1;
	_players = [];

	// The MEEEEAAAAT!
	{
		if ( _x distance _pos <= _range ) then {
			_players set [count _players, _x];
		};
	} forEach playableUnits;

	// Returns an array (empty or not)
	_players;
};


SL_fnc_calcSurface = {
	private ["_radius","_pi","_size"];

	_radius = _this select 0;
	_pi = 3.14159265359;
	_size = _pi * (_radius^2);

	_size;
};

nearWater = {
	private ["_pos","_distance","_waterpos","_nearwater"];

	_pos = _this select 0;
	_distance = _this select 1;
	_nearwater = 0;

	// Should be a function
	for "_x" from 1 to 36 do {
		_waterpos = [_pos, _distance, _x * 10] call BIS_fnc_relPos;
		if ( surfaceIsWater _waterpos ) then { _nearwater = 1; };
	};

	_nearwater;
};



addEZ = {
	private ["_pos","_radius"];

	_pos = _this select 0;
	_radius = _this select 1;

	exclusionZones set [count exclusionZones,[_pos,_radius]];
};

inEZ = {
	private ["_pos","_ez"];

	_pos = _this select 0;
	_ez = [];

	{
		if ( _pos distance (_x select 0) <= (_x select 1) ) then { _ez set [count _ez,_x]; };
	} forEach exclusionZones;

	_ez;
};

findHouse = {
	private ["_found","_houses","_house","_cpos","_range","_bpos"];

	_cpos = _this select 0;
	_range = _this select 1;

	_houses = _cpos nearObjects ["House_F",_range];
	_found = 0;
	_cbpos = 0;

	while { _found == 0 } do
	{
	    _house = _houses call BIS_fnc_selectRandom;
		_cbpos = 0;
		for "_x" from 1 to 100 do {
			if (format ["%1",(_house buildingPos _x)] != "[0,0,0]") then {
				_cbpos = _cbpos + 1;
			};

		};

		if (_cbpos > 2) then {
			_found = 1;
		};

	};

	[_house,_cbpos];
};

addLoot = {

	_holder = _this select 0;

	_items = ["ItemMap","ItemCompass","ItemGPS","ItemWatch","Medikit","Toolkit","FirstAidKit","Binocular"];
	_mags = ["9Rnd_45ACP_Mag","16Rnd_9x21_Mag","30Rnd_9x21_Mag","11Rnd_45ACP_Mag","6Rnd_45ACP_Cylinder","16Rnd_9x21_Mag","30Rnd_9x21_Mag"];
	_weapons = 	["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_01_MRD_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F"];
	_backpacks = ["B_AssaultPack_khk","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_sgg","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_Kitbag_mcamo","B_Kitbag_sgg","B_Kitbag_cbr","B_Bergen_sgg","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_blk","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_cbr","B_Carryall_ocamo","B_Carryall_oucamo","B_Carryall_mcamo","B_Carryall_oli","B_Carryall_khk","B_Carryall_cbr","B_OutdoorPack_blk","B_OutdoorPack_tan","B_OutdoorPack_blu","B_HuntingBackpack"];

	if (paramsArray select 0 == 1) then { null = [(getPos _holder), "ColorGreen" ] execVM "createDot.sqf"; };

	_chance = round random 1;
	if (_chance == 1) then { _holder addItemCargoGlobal [_items call BIS_fnc_selectRandom,1]; };

	_chance = round random 1;
	if (_chance == 1) then { _holder addMagazineCargoGlobal [_mags call BIS_fnc_selectRandom,round random 5]; };

	_chance = round random 1;
	if (_chance == 1) then { _holder addWeaponCargoGlobal [_weapons call BIS_fnc_selectRandom,1]; };

	_chance = round random 1;
	if (_chance == 1) then { _holder addBackpackCargoGlobal [_backpacks call BIS_fnc_selectRandom,1]; };

};

findRandomSpawn = {
	private ["_found","_spawnpos"];
	_spawnpos = [];
	_found = 0;
	while {_found == 0} do {
		_spawnpos = [getMarkerPos "center",random 20000, random 360] call BIS_fnc_relPos;
		if ([_spawnpos] call positionCheck) then { _found = 1 };
	};
	_spawnpos;
};

findDirectionalSpawn = {
	private ["_found","_spawnpos","_dir"];
	_start = _this select 0;
	_stop = _this select 1;
	_spawnpos = [];
	_found = 0;
	while {_found == 0} do {
		_dir = _start + (random _stop);
		diag_log format["Direction: %1",_dir];
		_spawnpos = [getMarkerPos "center",random 20000, _dir] call BIS_fnc_relPos;
		if ([_spawnpos] call positionCheck) then { _found = 1 };
	};
	_spawnpos;
};


positionCheck = {
	private ["_nearwater","_nearEmpty","_spawnpos","_emptyArray","_return","_spawnpos"];
	_spawnPos = _this select 0;
	_nearwater = 0;
	_nearEmpty = 0;
	if ( surfaceIsWater _spawnPos ) then { _nearWater = 1; };
	_emptyArray = _spawnPos isFlatEmpty [5, 0, 0.1, 1, 0, false, objNull];
	if ( count _emptyArray == 0 ) then {_nearEmpty = 1; };
	if ( _nearEmpty == 0 and _nearwater == 0 ) then { _return = true; } else { _return = false; };
	_return
};