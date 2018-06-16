// Private parts;
private ["_surface","_chance_road","_chance_open","_chance_house","_chance_weight","_side","_grp"];

//// Tunables!

// one infected per X square meter
_surface = 500; //100000

// Change to spawn on the road
_chance_road = 25;

// Change to spawn somewhere else
_chance_open = 25;

// Change to spawn in a building
_chance_house = 75; //25

// Determine the total weight
_chance_weight = _chance_road + _chance_open + _chance_house;

// required stuff
_side = createCenter civilian;
_grp = createGroup _side;

//// Lets start with the meat of the story!

// Gather all the locations we need to fuck up!
_locations = nearestLocations [getPos player,["nameCity","nameVillage","NameCityCapital"],40000];


// Fire off the main loop
{

	// Get city info, less than the config, but good enough.
	_cityPos = locationPosition _x;
	_citySize = size _x;
	// _cityName = format["random%1",round random 9999];

	// Since the city angle isn't in the config, we'll just assume the smallest axis is fine, which usually is.
	if (_citySize select 0 >= _citySize select 1) then {
		_citySize set [1,_citySize select 0];
	} else {
		_citySize set [0,_citySize select 1];
	};

	/*
	_marker = createMarker [_cityName,_cityPos];
	_marker setMarkerSize _citySize;
	_marker setMarkerColor "ColorRed";
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerBrush "Border";
	*/

	// Calculate the surface of a city.
	_size = [_citySize select 0] call SL_fnc_calcSurface;

	// With this variable we check of we don't spawn to much units in an area. _surface gets added up on an iteration.
	_total = 0;


	// While there aren't enough infected in the area yet.. keep running this.
	while { _total < _size } do {

		// Take a random number.
		_rnd = random _chance_weight;


		// Spawn infected on the road.
		if ( _rnd <= _chance_road ) then {

			// Fetch a list of roads.
			_list = _cityPos nearRoads (_citySize select 0);

			// Only continue if there are any roods.
			// Remember this is best-effort
			if ( count _list > 0) then {

				// Select a random road.
				_pos = _list call BIS_fnc_selectRandom;

				// TODO: DEBUG
				_spawnName = format["spawn%1",round random 9999999];
				_marker_size = createMarker [_spawnName,_pos];
				_marker_size setMarkerColor "ColorRed";
				_marker_size setMarkerShape "ICON";
				_marker_size setMarkerType "mil_dot";


				// Spawn the unit!
				// Editors note. Should be a function
				// TODO: FROM HERE
                _civie = civilians call bis_fnc_selectRandom;
                _obj = _grp createUnit [_civie,_pos,[],0,"NONE"];
                _obj spawn INF_fnc_infecthim;
        		// TODO: TO HERE

	            // Place the units in the array of alive units for tracking.
	            alive_units set [count alive_units, _obj];

			};
		};


		// Continue if we want to spawn somewhere in the city.
		if ( _rnd >= _chance_road and _rnd <= (_chance_road + _chance_open) ) then {

			// We needs some checks and balances and prime some stuff.
			_found = 0;
			_done = 0;
			_pos = [];

			// Best effort, don't try this more than 25 times, or else we lockup the server..
			// 25 should be a variable.
			while {_found == 0 and _done <= 25} do {

				// Select a random position somewhere in town.
				_pos = [_cityPos,random (_citySize select 0), random 360] call BIS_fnc_relPos;

				// debug
				// null = [_pos,"ColorGreen"] execVM "createDot.sqf";

				// Is the area plat and empty?
				_result = _pos isFlatEmpty [1, 0, 0.8, 1, 0, false, objNull];

				// Not 10 meters near roads.
				_roadSegments = _pos nearRoads 10;

				// If all goes well, we found something.
				if ( (count _result > 0) && (count _roadSegments == 0) && (!surfaceIsWater _pos) ) then {
					_found = 1;
				};

				// Add a line..
				_done = _done + 1;
			};

			if (_found == 1) then {

				// TODO DEBUG
				_spawnName = format["spawn%1",round random 9999999];
				_marker_size = createMarker [_spawnName,_pos];
				_marker_size setMarkerColor "ColorGreen";
				_marker_size setMarkerShape "ICON";
				_marker_size setMarkerType "mil_dot";


				// Lest spawn the unit!
				// Spawn the unit!
				// TODO: FROM HERE
                _civie = civilians call bis_fnc_selectRandom;
                _obj = _grp createUnit [_civie,_pos,[],0,"NONE"];
                _obj spawn INF_fnc_infecthim;
        		// TODO: TO HERE

	            // Place the units in the array of alive units for tracking.
	            alive_units set [count alive_units, _obj];

			};

		};


		// Now the nasty bit.. houses.
		if ( _rnd >= (_chance_road + _chance_open) and _rnd <= (_chance_road + _chance_open + _chance_house) ) then {

			// Primer, declaring, stuff we need.
			_pos = [];
			_house = 1;
			_found = 0;
			_done = 0;
			_cbpos = 0;

			// Get the houses in the city.
			_houses = _cityPos nearObjects ["House_F",_citySize select 0];

			// Continue if you have more than nill houses.
			if ( count _houses > 0) then {

				// Best effort stuff
				while { _found == 0 and _done <= 25} do
				{
					// Select a random house
				    _house = _houses call BIS_fnc_selectRandom;

				    // debug
				    // null = [getPos _house,"ColorOrange"] execVM "createDot.sqf";


				    // Count the amount of positions in a building.
					_cbpos = 0;
					for "_x" from 1 to 100 do {
						if (format ["%1",(_house buildingPos _x)] != "[0,0,0]") then {
							_cbpos = _cbpos + 1;
						};

					};

					// If we find more than two, we are happy!
					if (_cbpos > 2) then {
						_found = 1;
					};

					// debug
					//player sideChat format ["found: %1; done: %2;",_found,_done];

					// _done + 1 is make sure we don't loop forever!
					_done = _done + 1;

				};

				// We found a spot. Now let spawn a unit.
				if (_found == 1) then {
					_pos = _house buildingPos (round random _cbpos);

					// TODO DEBUG
					_spawnName = format["spawn%1",round random 9999999];
					_marker_size = createMarker [_spawnName,_pos];
					_marker_size setMarkerColor "ColorOrange";
					_marker_size setMarkerShape "ICON";
					_marker_size setMarkerType "mil_dot";


					// Spawn the unit!
					// TODO: FROM HERE
                    _civie = civilians call bis_fnc_selectRandom;
                    _obj = _grp createUnit [_civie,_pos,[],0,"NONE"];
                    _obj spawn INF_fnc_infecthim;
	        		// TODO: TO HERE

		            // Place the units in the array of alive units for tracking.
		            alive_units set [count alive_units, _obj];

				};
			};

		};

		// Now we've tried to spawn a unit. Of to the next unit!
		_total = _total + _surface;

	};

} foreach _locations;

// EOF - Go Home!