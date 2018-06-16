diag_log "--- Starting management of Vehicles ---";

private ["_size","_mapcenter","_marker","_locations","_cityPos","_citySizeArr","_citySize","_loclist","_players","_roads","_road","_vehClass","_veh","_vehCount","_houses","_house"];

_sleep = 10;

// Determine the center of the map (Create one if the map doesn't have MapSize)
_size = getNumber (configFile >> "CfgWorlds" >> worldName >> "MapSize");
_mapcenter = [_size/2,_size/2,0];
_marker = createMarkerLocal ["center",_mapcenter];

// Fetch locations
_locations = nearestLocations [getMarkerPos "center",["nameCity","nameVillage","NameCityCapital"],40000];

{

	_cityPos = locationPosition _x;
	_citySizeArr = size _x;
	// Since the city angle isn't in the config, we'll just assume the smallest axis is fine, which usually is.
	if (_citySizeArr select 0 >= _citySizeArr select 1) then {
		_citySize = _citySizeArr select 0;
	} else {
		_citySize = _citySizeArr select 1;
	};

	// Store stuff
	loclist set [count loclist, [_cityPos,_citySize]];

} forEach _locations;

// Loop and spawn stuff when a player is near...
while { count loclist >= 1 } do {

	{

		_cityPos = _x select 0;
		_citySize = _x select 1;

		_players = [_cityPos, (_citySize * 2)] call playersInRange;

		if ( count _players >= 1 ) then {
			diag_log "Players in range; deleting;";
			_roads = _cityPos nearRoads (_citySize * 2);

			_vehCount = (_citySize/100) * (paramsArray select 8);

			// Spawn random vehicles
			for "_i" from 1 to _vehCount do {
				_road = _roads call bis_fnc_selectRandom;
				_vehClass = rndVehicles call bis_fnc_selectRandom;
				_veh = _vehClass createVehicle (getPos _road);
				_veh setDir (random 360);
				_veh setDamage (random 1);
				_veh setFuel (random 1);
				if ( random 100 <= (paramsArray select 10) ) then { [_veh] call addLoot; };
				if ( paramsArray select 0 == 1 ) then { diag_log format["%1 spawned at %2",_vehClass,getPos _road]; };
			};

			_vehCount = (_citySize/100) * (paramsArray select 9);

			// Spawn random fortification stuff
			for "_i" from 1 to _vehCount do {
				_road = _roads call bis_fnc_selectRandom;
				_vehClass = fortifications call bis_fnc_selectRandom;
				_veh = _vehClass createVehicle (getPos _road);
				_veh setDir (random 360);
				if ( paramsArray select 0 == 1 ) then { diag_log format["%1 spawned at %2",_vehClass,getPos _road]; };
			};

			// Spawn weapons
			_houses = _cityPos nearObjects ["House", (_citySize * 2)];
			for "_i" from 1 to (round (count _houses)/(paramsArray select 10)) do {
					_house = [_cityPos, (_citySize * 2)] call findHouse;
					_lootPos = (_house select 0) buildingPos (round (random (_house select 1)));
					_holder = "groundweaponholder" createVehicle _lootPos;
					[_holder] call addLoot;
					_holder setPos _lootPos;
			};

			loclist = loclist - [_x];
		};
	} foreach loclist;

sleep _sleep;

};