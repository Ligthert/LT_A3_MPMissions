// cleanup.sqf: clean up the mess the player left behind.
// By Sacha Ligthert

private ["_objects", "_markers", "_center", "_go", "_closest", "_tmp_dist"];

_objects = _this select 0;
_markers = _this select 1;
_center = _this select 2;

_go = 0;

// Lets make sure the players are really really gone
while { _go == 0 } do {

	sleep 60;
	_closest = 9999;

	{
		_tmp_dist = _center distance _x;
		if ( _tmp_dist <= _closest ) then { _closest = _tmp_dist; };
	} forEach playableUnits;

	if ( _closest > 1500 ) then { _go = 1; };
};


// Lets clean up everything.
{
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach _objects;

{
	deleteMarker _x;
} forEach _markers;

// Time to fuck off