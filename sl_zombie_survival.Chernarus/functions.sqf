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