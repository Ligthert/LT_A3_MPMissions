private ["_i","_size"];

_i = 0;

// search_area
// size = 1000

while {_i<=180} do {

	// Step 1: resize
	_size = getMarkerSize "search_area";
	_size set [0,(_size select 0) - 10];
	_size set [1,(_size select 1) - 10];
	"search_area" setMarkerSize _size;

	// Step 2: place
	_pos = getPos aaa;
	_range = (_size select 0)/2;
	_pos = [_pos,_range,random 360] call bis_fnc_relPos;
	"search_area" setMarkerPos _pos;

	// Step 3: sleep
	sleep 60;
	_i = _i + 1;
};