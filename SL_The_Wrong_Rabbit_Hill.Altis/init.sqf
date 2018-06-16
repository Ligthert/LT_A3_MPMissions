// define the private parts
private ["_count","_tmp_count","_marker","_new_pos"];

// a much neede function
sl_fnc_newPos = {

	_pos	= _this select 0;
	_dir	= _this select 1;
	_dist	= _this select 2;

	_wx = (_pos select 0) + (_dist * (sin _dir));
	_wy = (_pos select 1) + (_dist * (cos _dir));

	[_wx,_wy]
};

// Lets arm the players
player addWeapon "Hgun_P07_F";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";

// some basic variables
_count = 1;
_tmp_count = 0;

// The marker that the bunnies will spawn from.
_marker = createMarkerLocal ["spawn",position player];
//_marker setMarkerShapeLocal "ICON";
//_marker setMarkerColorLocal "ColorRed";
//_marker setMarkerTypeLocal "mil_dot";

//sleep 60;

sleep 10;
["Will you survive?"] call BIS_fnc_titleText;

// Main loop
while { alive player } do {

	while { _tmp_count != _count } do {
		sleep 1;
		_new_pos = [position player, random 360, 300] call sl_fnc_newPos;
		_marker setMarkerPosLocal _new_pos;
		execVM "spawnBunny.sqf";
		_tmp_count = _tmp_count + 1;
	};


	sleep (30 + random 30);
	_tmp_count = 0;
	_count = _count + 1;

};

deleteMarkerLocal _marker;