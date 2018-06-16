/* TODO:
* Under certain conditions (the hostage enters a new group of the opposite side) the hostage refuses to cooperate;
* Make a proper ending. This is either end1 (personal UAV) for the victor or LOOSE for the losers (personal UAV);
* Allow the selection of multiple locations via parameters.
*/

// THE obligatory function
sl_fnc_newPos = {

	_pos	= _this select 0;
	_dir	= _this select 1;
	_dist	= _this select 2;

	_wx = (_pos select 0) + (_dist * (sin _dir));
	_wy = (_pos select 1) + (_dist * (cos _dir));

	[_wx,_wy]

};

_sideHQ = createCenter resistance;
_grp1 = createGroup resistance;

_greenMenArray = ["I_Soldier_A_F","I_soldier_AR_F","I_medic_F","I_engineer_F","I_soldier_exp_F","I_Soldier_GL_F","I_soldier_M_F","I_soldier_AA_F","I_soldier_AT_F","I_officer_F","I_soldier_repair_F","I_Soldier_F","I_soldier_LAT_F","I_Soldier_lite_F","I_Soldier_SL_F","I_Soldier_TL_F"];
_sentries = ["I_Soldier_A_F","I_soldier_AR_F","I_Soldier_lite_F","I_Soldier_GL_F","I_Soldier_TL_F"];


if (isServer) then {

	// Parse parameters
	if ( paramsArray select 0 != 0) then {
		{ _x setDamage 1; } foreach (getMarkerPos "pos1" nearObjects ["Lamps_base_F", 300] );
		{ _x setDamage 1; } foreach (getMarkerPos "pos1" nearObjects ["Land_PowerPoleWooden_L_F", 300] );
	};

	_year = 2035;
	_month = 7;
	_day = 8;
	_hour = 23;
	_minute = 55;

	if ( paramsArray select 2 != 0 ) then {
		_hour = 11;
	};

	if ( paramsArray select 3 != 0 ) then {
		_month = 12;
	};

	setDate[_year,_month,_day,_hour,_minute];

	// 1. Place the Hostage with armed guards!
	_pos = getMarkerPos "pos1";
	_houses = _pos nearObjects ["House",100];
	_house = 0;

	_count = count _houses;

	_found = 0;

	while {_found == 0} do {
		_house = _houses call BIS_fnc_selectRandom;

		// building buildingPos index
		_cbpos = 0;
		for "_x" from 1 to 100 do {
			_bpos = _house buildingPos _x;
			if (format ["%1",_house buildingPos _x] != "[0,0,0]") then {
				_cbpos = _cbpos + 1;
			};
		};

		if (_cbpos != 0 and _cbpos > 5) then { _found = _cbpos;}

	};

	// hint str _found;
	// player setPos (_house buildingPos 2);
	// "I_Soldier_A_F"
	hossie setPos (_house buildingPos _found);

	_found = _found - 1;
	_unit = _greenMenArray call BIS_fnc_selectRandom;
	_my_unit = _grp1 createUnit [_unit, (_house buildingPos _found), [], 0, "NONE"];
	_my_unit setPos (_house buildingPos _found);
	_my_unit setDir random 360;
	doStop _my_unit;

	_found = _found - 1;
	_unit = _greenMenArray call BIS_fnc_selectRandom;
	_my_unit = _grp1 createUnit [_unit, (_house buildingPos _found), [], 0, "NONE"];
	_my_unit setPos (_house buildingPos _found);
	_my_unit setDir random 360;
	doStop _my_unit;

	_found = _found - 1;
	_unit = _greenMenArray call BIS_fnc_selectRandom;
	_my_unit = _grp1 createUnit [_unit, (_house buildingPos _found), [], 0, "NONE"];
	_my_unit setPos (_house buildingPos _found);
	_my_unit setDir random 360;
	doStop _my_unit;

	_unit = _greenMenArray call BIS_fnc_selectRandom;
	_my_unit = _grp1 createUnit [_unit, (_house buildingPos 1), [], 0, "NONE"];
	_my_unit setPos (_house buildingPos 1);
	_my_unit setDir random 360;
	doStop _my_unit;

	// 2. Place sentries - SP + MP Compatible
	if (paramsArray select 4 == 0) then {
		_i = 50;
		_player_count = 1;
		_players = playableUnits;
		if ( count _players == 0 ) then {
			_players = 10;
			_player_count = _players * 1.5;
		} else {
			_player_count = count _players * (paramsArray select 5);
		};
		_player_count = ceil _player_count;
		while { _player_count >= 1 } do {
			_grp2 = [_pos, resistance, _sentries] call BIS_fnc_spawnGroup;
			[leader _grp2, _pos, 10, _i, 25] execVM "taskPatrol.sqf";
			_player_count = _player_count - 5;
			_i = _i + 50;
		};
	};
	// 3. Move BLUFOR and REDFOR units to their respective positions
	// hint str (count playableUnits);
};

// Lets remove stuff like NVGs
// This should happen after the units spawned, or else they have all the fun gadgets and the players wont
{
	_unit_inv = assignedItems _x;

	if ( [_unit_inv,"NVGoggles"] call BIS_fnc_inString ) then {
		_x unassignItem "NVGoggles";
		_x removeItem "NVGoggles";
	};

	if ( [_unit_inv,"NVGoggles_OPFOR"] call BIS_fnc_inString ) then {
		_x unassignItem "NVGoggles_OPFOR";
		_x removeItem "NVGoggles_OPFOR";
	};

	if ( [_unit_inv,"NVGoggles_INDEP"] call BIS_fnc_inString ) then {
		_x unassignItem "NVGoggles_INDEP";
		_x removeItem "NVGoggles_INDEP";
	};

} forEach allUnits;

waitUntil {!(isNull player)};
waitUntil {player==player};
finishMissionInit;
waitUntil{!(isNil "BIS_fnc_init")};

// Setting the weather is local. :s And it seems broken!
if ( paramsArray select 1 != 0 ) then {
	0 setOvercast 1;
	0 setRain 1;
};

// Now lets nerf all the units
player addEventHandler ["Fired",{deleteVehicle (_this select 6)}];
sleep 5;
// And enter the planning phase
execVM "WeaponCountdown.sqf";