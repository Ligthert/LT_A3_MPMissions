private ["_obj","_dir","_marker","_alpha","_loc"];

if (side player == west) exitWith {true};

_obj = _this select 0;
_dir = _this select 1;

_loc = getPos (leader _obj);
_alpha = 1;

_marker = createMarkerLocal [format ["RndMrkr%1", random 99999],[_loc, 25, _dir] call bis_fnc_relPos];

_marker setMarkerColorLocal "ColorRed";
_marker setMarkerShapeLocal "RECTANGLE";
_marker setMarkerSizeLocal [25,0.5];
_marker setMarkerDirLocal _dir+90;
_marker setMarkerAlphaLocal _alpha;

sleep 5;

while {_alpha >= 0} do {
	sleep 0.2;
	_alpha = _alpha - 0.05;
	_marker setMarkerAlphaLocal _alpha;
};

deleteMarker _marker;
