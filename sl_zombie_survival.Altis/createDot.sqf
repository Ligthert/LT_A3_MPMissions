private ["_pos","_considerName","_marker_size"];

_pos = _this select 0;

_considerName = format["consider%1",round random 9999999];
_marker_size = createMarker [_considerName,_pos];
_marker_size setMarkerColor (_this select 1);
_marker_size setMarkerShape "ICON";
_marker_size setMarkerType "mil_dot";

// 1 naar 0
_alpha = 1;
for "_x" from 1 to 20 do {
	_marker_size setMarkerAlpha _alpha;
	sleep 1;
	_alpha = _alpha - 0.05;
};

deleteMarker _marker_size;