private ["_buildings","_group"];

_list = (getMarkerPos "buildings") nearObjects ["House_F",50];

_countBuildingPositions = {

	private ["_house","_found","_cbpos","_size"];

	_house = _this select 0;
	_found = 0;

	_cbpos = 0;
	for "_x" from 1 to 100 do {

		if (format ["%1",(_house buildingPos _x)] != "[0,0,0]") then {
			_cbpos = _cbpos + 1;
		};
	};


	_cbpos;
};

{

	_size = [_x] call _countBuildingPositions;
	if ( _size >= 0 ) then {
		for "_y" from 1 to _size do {
			grp1 addWaypoint [ (_x buildingPos _y), 1 ];
		};
	};

} forEach _list;