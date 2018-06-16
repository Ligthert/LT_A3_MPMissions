enableSaving [false,false];

getMapSize = {
	private ["_size"];
	_size = getNumber (configfile >> "CfgWorlds" >> worldName >> "mapSize");
	_size
};

SL_fnc_buildingPositions = {
	private ["_cbpos"];
	_house = _this select 0;
	_cbpos = 0;
	for "_x" from 1 to 100 do {
		if (format ["%1",(_house buildingPos _x)] != "[0,0,0]") then {
			_cbpos = _cbpos + 1;
		};
	};
	_cbpos;
};

_size = call getMapSize;