enableSaving [false, false];

if (isServer) then {
	[getMarkerPos "wall1_start", getMarkerPos "wall1_finish"] execVM "autoWall.sqf";
	[getMarkerPos "wall1_start", getMarkerPos "wall2_finish"] execVM "autoWall.sqf";
	[getMarkerPos "wall2_start", getMarkerPos "wall1_finish"] execVM "autoWall.sqf";
	[getMarkerPos "wall2_start", getMarkerPos "wall2_finish"] execVM "autoWall.sqf";
};

/* For future reference:
nato_desk setPosATL [4372.4,21095.7,2.80527];
nato_laptop attachTo [nato_desk,[0,0,0.56]];

csat_desk setPosATL [6745.63,19569.2,2.78271];
csat_laptop attachTo [csat_desk,[0,0,0.56]];
*/

if (!isDedicated) then {
	null = execVM "fight.sqf";
	null = execVM "initIndicator.sqf";
	// null = execVM "limiter.sqf";
};

if (isServer) then {

	PAPABEAR=[West,"HQ"];

	// Private vars
	private ["_areas","_mpos","_objects","_west","_east","_marker","_scores","_score","_total_west","_total_east"];

	// Define the markers we need to check
	_areas = ["area_1","area_2","area_3","area_4","area_5","area_6","area_7","area_8","area_9","area_10","area_11","area_12"];
	_scores = [0,0,0,0,0,0,0,0,0,0,0,0];

	while {true} do {

		_total_east = 0;
		_total_west = 0;

		for "_x" from 0 to (count _areas) - 1 do {
			_marker = _areas select _x;
			_score = _scores select _x;

			_mpos = getMarkerPos _marker;

			_west = 0;
			_east = 0;
			_objects = _mpos nearEntities [["Man", "Car", "Motorcycle", "Tank"], 100];

			{
				if ( side _x == WEST ) then { _west = _west + 1; };
				if ( side _x == EAST ) then { _east = _east + 1; };
			} forEach _objects;

			_score = _score + _west;
			_score = _score - _east;

			if (_score >= 100) then {
				_score = 100;
				_marker setMarkerColor "ColorBlue";
				_total_west = _total_west + 1;
			};

			if (_score <= -100) then {
				_score = -100;
				_marker setMarkerColor "ColorRed";
				_total_east = _total_east + 1;
			};

			if ( _score != 100 and _score != -100 ) then {
				_marker setMarkerColor "ColorWhite";
			};

			_marker setMarkerText str _score;

			_scores set [_x, _score];

			//PAPABEAR sideChat format["Area %1: %2",_x,_score];

		};

		"blufor_areas" setMarkerText format["Coltrolled by BLUFOR: %1",_total_west];
		"redfor_areas" setMarkerText format["Controlled by REDFOR: %1",_total_east];

		if ( _total_west == 12 or _total_east == 12 ) then {
			if (_total_east == 12) then { "end1" call BIS_fnc_endMission; };
			if (_total_west == 12) then { "end2" call BIS_fnc_endMission; };
		};

		sleep 1;

	};
};