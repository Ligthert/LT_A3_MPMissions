_mapSize = _this select 0;

hint "Starting main loop";

_xas = 50;
_yas = 50;

_index = [];

while { _xas <= _mapSize } do {

	while { _yas <= _mapSize } do {

		_pos = [_xas,_yas,0];

		if !(surfaceIsWater _pos) then {

			_mkrColor = "ColorGreen";
			_objs = _pos nearObjects ["House",50];
			_count = 0;
			_type = "r";
			{ _count = [_x] call SL_fnc_buildingPositions; } forEach _objs;
			if ( _count > 1 ) then { _mkrColor = "ColorRed"; _type = "u"; };

			_mkr = format["%1-%2",_xas,_yas];
			_mkr = createMarkerLocal[_mkr, _pos];
			_mkr setMarkerShapeLocal "RECTANGLE";
			_mkr setMarkerTypeLocal "SOLID";
			_mkr setMarkerSizeLocal [50,50];
			_mkr setMarkerColor _mkrColor;
			_mkr setMarkerAlphaLocal 0.8;

			_pos set [2,_type];

			_index set [(count _index),_pos];



		};

		_yas = _yas + 100;

	};

	_yas = 50;
	_xas = _xas + 100;

};

{
	diag_log format["%1",_x];
} forEach _index;