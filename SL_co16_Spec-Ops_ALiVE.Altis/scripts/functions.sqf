// functions.sqf - by Sacha Ligthert
// Goal: cram all the functions into one file

// Requestion a mission (player)
SO_fnc_requestMission = {

	// Check to see if the player who request the mission has the right rank.
	if( (rank player) != "LIEUTENANT" ) exitWith { player groupChat "You need to be a Lieutenant to request new missions!";};

	// Generate a uniq taskname-variable where triggers can sign on.
	_tsk = format["task%1",round random 99999];

	// Push the request with the taskname-var to the server
	[ [_tsk],"SO_fnc_createMission",false,false] call BIS_fnc_MP;

};


// Creating a new mission (server)
SO_fnc_createMission = {

	//////
	// MAGIC HAPPENS HERE!
	/////////////

	// Move params into vars
	_tsk = _this select 0;


	// Compile the desired type of missions.
	// If none are selected in the params (by asshole admins) create extraction
	// else select a random one.
	_objective = objectives call BIS_fnc_selectRandom;


	// Based on the mission-type execute the fitting script, pass along _tsk as parameter.
	[_tsk] execVM _objective;

	// This is purely for development purposes, so it should be remove pre-release
	// [[_tsk],"SO_fnc_createTask",false,false] call BIS_fnc_MP;

};


// Create a task
SO_fnc_createTask = {

	// Get the task
	_tsk 			= _this select 0;
	_description 	= _this select 1;
	_title			= _this select 2;
	_marker 		= _this select 3;
	_object			= _this select 4;

	//Create the task
	/*
		Parameters:
		0: BOOL or OBJECT or GROUP or SIDE or ARRAY - Task owner(s)
		1: STRING or ARRAY - Task name or array in the format [task name, parent task name]
		2: ARRAY or STRING - Task description in the format ["description", "title", "marker"] or CfgTaskDescriptions class
		3: OBJECT or ARRAY or STRING - Task destination
		4: BOOL or NUMBER or STRING - Task state (or true to set as current)
		5: NUMBER - Task priority (when automatically selecting a new current task, higher priority is selected first
	*/
	[true,_tsk,[_description,_title,_marker],_object,"CREATED",0] call BIS_fnc_taskCreate;
	[_tsk] call BIS_fnc_taskSetCurrent;

};


// Find a random city
// Stolen from Spliffz
// Please don't sue me
SO_fnc_randomCity = {

	private ["_randomLoc", "_cityName", "_cityPos", "_cityRadA", "_cityRadB", "_cityType", "_cityAngle", "_cityTypes","_found"];

	_cityName = "";

	// Stuff we need
	_locations = configfile >> "CfgWorlds" >> worldName >> "Names";
	//_cityTypes = ["Name","NameLocal","NameVillage","NameCity","NameCityCapital"];
	_cityTypes = ["NameVillage","NameCity","NameCityCapital"];
	_found = 0;


	while { _found == 0 } do {

			_randomLoc = _locations call BIS_fnc_selectRandom;

			// get city info
			_cityName = getText(_randomLoc >> "name");
			_cityPos = getArray(_randomLoc >> "position");
			_cityRadA = getNumber(_randomLoc >> "radiusA");
			_cityRadB = getNumber(_randomLoc >> "radiusB");
			_cityType = getText(_randomLoc >> "type");
			_cityAngle = getNumber(_randomLoc >> "angle");

		if (_cityType in _cityTypes) then { _found = 1; };
	};

	[_randomLoc, _cityName, _cityPos, _cityRadA, _cityRadB, _cityType, _cityAngle];
};

// Again stolen from Spliffz
// Again don't sue me!
SO_fnc_randomLocation = {

	private ["_randomLoc", "_cityName", "_cityPos", "_cityRadA", "_cityRadB", "_cityType", "_cityAngle", "_cityTypes","_found"];

	_cityName = "";

	// Stuff we need
	_locations = configfile >> "CfgWorlds" >> worldName >> "Names";
	_cityTypes = ["NameLocal"];
	_found = 0;

	while { _found == 0 } do {

			_randomLoc = _locations call BIS_fnc_selectRandom;

			// get city info
			_cityName = getText(_randomLoc >> "name");
			_cityPos = getArray(_randomLoc >> "position");
			_cityRadA = getNumber(_randomLoc >> "radiusA");
			_cityRadB = getNumber(_randomLoc >> "radiusB");
			_cityType = getText(_randomLoc >> "type");
			_cityAngle = getNumber(_randomLoc >> "angle");

		if (_cityType in _cityTypes) then { _found = 1; };
	};

	[_randomLoc, _cityName, _cityPos, _cityRadA, _cityRadB, _cityType, _cityAngle];
};


// Again stolen from Spliffz
// Again don't sue me!
SO_fnc_randomHill = {

	private ["_randomLoc", "_cityName", "_cityPos", "_cityRadA", "_cityRadB", "_cityType", "_cityAngle", "_cityTypes","_found"];

	_cityName = "";

	// Stuff we need
	_locations = configfile >> "CfgWorlds" >> worldName >> "Names";
	_cityTypes = ["Hill"];
	_found = 0;

	while { _found == 0 } do {

			_randomLoc = _locations call BIS_fnc_selectRandom;

			// get city info
			_cityName = getText(_randomLoc >> "name");
			_cityPos = getArray(_randomLoc >> "position");
			_cityRadA = getNumber(_randomLoc >> "radiusA");
			_cityRadB = getNumber(_randomLoc >> "radiusB");
			_cityType = getText(_randomLoc >> "type");
			_cityAngle = getNumber(_randomLoc >> "angle");

		if (_cityType in _cityTypes) then { _found = 1; };
	};

	[_randomLoc, _cityName, _cityPos, _cityRadA, _cityRadB, _cityType, _cityAngle];
};

SO_fnc_randomPos = {
    private ["_i", "_startPos", "_isOk", "_result", "_roadSegments", "_dummyObject","_wx","_wy","_x","_nearwater","_waterpos","_nearby","_tmpnear"];

	_axis = getNumber (configfile >> "CfgWorlds" >> worldName >> "mapSize");

    // Choose a random and flat position (for-loopen and markers are for test on new maps).
    for [{_i = 0},  {_i < 1}, {_i = _i + 1}] do {
        _isOk = false;
        while {!_isOk} do {

        	_nearwater = 0;
        	_waterpos = 0;
        	_nearby = 9000;

			// needs randomization
			// And it needs to stick outside salt planes
			_wx = random _axis;
			_wy = random _axis;
			while { _wx > 22500 and _wx < 24900 && _wy > 16600 and _wy < 19500 } do {
				_wx = random _axis;
				_wy = random _axis;
			};

            _startPos = [_wx,_wy];

            _result = _startPos isFlatEmpty [1, 0, 0.8, 1, 0, false, objNull];
            _roadSegments = _startPos nearRoads 50; // was 12

            // Should be a function
            for "_x" from 1 to 36 do {
            	_waterpos = [_startPos, 500, _x * 10] call BIS_fnc_relPos;
            	if ( surfaceIsWater _waterpos ) then { _nearwater = 1; };
            	//_marker = createMarker[format["pos%1",random 99999],_waterpos];
		        //_marker setMarkerType "mil_dot";
				//_marker setMarkerText _marker;
            };

			{
				if (side _x == EAST) then {
					_tmpnear = _startPos distance (getPos _x);
					if (_tmpnear < _nearby) then { _nearby = _tmpnear; };
				}
			} forEach allUnits;

            //_marker = createMarker[format["pos%1",random 99999],_waterpos];
		    //_marker setMarkerType "mil_dot";
			//_marker setMarkerText format["count: %1; roads: %2; water: %3; nearest: %4;",count _result,count _roadSegments,_nearwater,_nearby];

            if ((count _result > 0) && (count _roadSegments == 0) && (!surfaceIsWater _startPos) && (_nearwater == 0) && _nearby > 1000 ) then {
                _dummyObject = "Land_HelipadEmpty_F" createVehicleLocal _startPos; // moet invisi-helipad worden

                // 300 -> 50
                if (((nearestBuilding _dummyObject) distance _startPos) > 50) then {
                    _isOk = true;
                };

                deleteVehicle _dummyObject;
            };
        };

//		_str = format["marker%1",random 10000];
//      _marker = createMarker [ _str, _startPos];
//      _marker setMarkerType "mil_destroy";
//		_marker setMarkerText _str;

    };

    _startPos
};

SO_fnc_createPatrol = {

	private ["_center","_spawnpos","_grp1","_grp2","_grp3","_grp4"];

	_center = _this select 0;
	_spawnpos = [0,0];


	_spawnpos = [_center, 0, 10] call BIS_fnc_relPos;


	_grp4 = [_spawnpos, EAST, ["O_Soldier_F"]] call BIS_fnc_spawnGroup;
	[leader _grp4, _newpos, 10, 25, 6, 0] execVM "scripts\taskPatrol.sqf";

	_spawnpos = [_center, 125, 0] call BIS_fnc_relPos;
	_grp1 = [_spawnpos, EAST, configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam"] call BIS_fnc_spawnGroup;
	[leader _grp1, _newpos, 125, 150, 36, 0] execVM "scripts\taskPatrol.sqf";

	_spawnpos = [_center, 200, 90] call BIS_fnc_relPos;
	_grp2 = [_spawnpos, EAST, configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam"] call BIS_fnc_spawnGroup;
	[leader _grp2, _newpos, 225, 250, 36, 120] execVM "scripts\taskPatrol.sqf";

	_spawnpos = [_center, 325, 180] call BIS_fnc_relPos;
	_grp3 = [_spawnpos, EAST, configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam"] call BIS_fnc_spawnGroup;
	[leader _grp3, _newpos, 325, 350, 36, 240] execVM "scripts\taskPatrol.sqf";

	// Because we like profiles
	[false, [_grp1,_grp2,_grp3,_grp4], nil ] call ALIVE_fnc_createProfilesFromUnitsRuntime;

};


// Finds a house, returns it with the amount of positions;
SO_fnc_findHouse = {

	private ["_found","_houses","_house","_cpos","_range","_bpos"];

	_cpos = _this select 0;
	_range = _this select 1;

	_houses = _cpos nearObjects ["House",_range];
	_found = 0;
	_cbpos = 0;

	while { _found == 0 } do
	{
	    _house = _houses call BIS_fnc_selectRandom;
		_cbpos = 0;
		for "_x" from 1 to 100 do {
			if (format ["%1",(_house buildingPos _x)] != "[0,0,0]") then {
				_cbpos = _cbpos + 1;
			};

		};

		if (_cbpos > 2) then {
			_found = 1;
		};

	};

	[_house,_cbpos];

};


// Select a random intel source
SO_fnc_intelSource = {
	private ["_sources","_source"];
	_sources = ["HUMINT","SIGINT","MILINT","SATINT"];
	_source = _sources call BIS_fnc_selectRandom;
	_source;
};

// Check around a pos to see if its near the ocean (messes up patrols)
SO_fnc_nearWater = {

	private ["_pos","_distance","_waterpos","_nearwater"];

	_pos = _this select 0;
	_distance = _this select 1;

	_nearwater = 0;

	// Should be a function
	for "_x" from 1 to 36 do {
		_waterpos = [_pos, _distance, _x * 10] call BIS_fnc_relPos;
		if ( surfaceIsWater _waterpos ) then { _nearwater = 1; };
	};

	_nearwater;

};

// Convert azimut into a humanreadable format
SO_fnc_deg2Compas = {
	private ["_deg","_ret"];

	// Our only parameter
	_deg = _this select 0;

	// Lets reduce this number into something realistich
	while { _deg > 360 } do { _deg = _deg - 360; };

	// Or increase
	while { _deg < 0 } do { _deg = _deg + 360; };

	if ( _deg >= 337.5 or  _deg <= 22.49  ) then { _ret = "North"; };
	if ( _deg >= 22.5  and _deg <= 67.4) then { _ret = "Northeast"; };
	if ( _deg >= 67.5  and _deg <= 112.49 ) then { _ret = "East"; };
	if ( _deg >= 112.5 and _deg <= 157.49 ) then { _ret = "Southeast"; };
	if ( _deg >= 157.5 and _deg <= 202.49 ) then { _ret = "South"; };
	if ( _deg >= 202.5 and _deg <= 247.49 ) then { _ret = "Southwest"; };
	if ( _deg >= 247.5 and _deg <= 292.49 ) then { _ret = "West"; };
	if ( _deg >= 292.5 and _deg <= 337.49 ) then { _ret = "Northwest"; };

	_ret;
};

// Find the nearest location that can be used as a reference
SO_fnc_nearestCity = {
	private ["_pos","_loc_city","_loc_village","_loc_capital","_closest","_dist_city","_dist_village","_dist_capital","_tmp_dist","_close_loc","_close_name"];
	_pos = _this select 0;

	//["NameVillage","NameCity","NameCityCapital"]
	_loc_city    = nearestLocation [_pos, "nameCity"];
	_loc_village = nearestLocation [_pos, "NameVillage"];
	_loc_capital = nearestLocation [_pos, "NameCityCapital"];

	_pos_city 		= getPos _loc_city;
	_pos_village 	= getPos _loc_village;
	_pos_capital	= getPos _loc_capital;

	_dist_city		= _pos_city 	distance _pos;
	_dist_village	= _pos_village 	distance _pos;
	_dist_capital	= _pos_capital 	distance _pos;

	_tmp_dist = 9999;

	if (_dist_city <= _tmp_dist) then {
		_close_loc = _loc_city;
		_tmp_dist = _dist_city;
	};

	if (_dist_village <= _tmp_dist) then {
		_close_loc = _loc_village;
		_tmp_dist = _dist_village;
	};

	if (_dist_capital <= _tmp_dist) then {
		_close_loc = _loc_capital;
	};

	_closest = [getPos _close_loc,text _close_loc];

	_closest;
};


// Compile a briefind base on the info available
SO_fnc_compileBriefing = {

	/*
		function format
		[
			intel source SO_fnc_intelSource
			ingame-names (name) name
			Nearest location
			location azimut (text: north, n/w, etc) SO_fnc_deg2Compas
		]
	*/

	private ["_txt","_pos","_obj","_retval","_dir","_city","_tmp_obj"];
	_txt		= _this select 0;
	_pos 		= _this select 1;
	_obj		= _this select 2;

	/*
	function format
	[
		intel source SO_fnc_intelSource
		ingame-names (name) name
		Nearest location
		location azimut (text: north, n/w, etc) SO_fnc_deg2Compas
	]
	*/

	_city = [_pos] call SO_fnc_nearestCity;
	_tmp_obj = "Land_HelipadEmpty_F" createVehicle (_city select 0);
	_dir = [_tmp_obj, _pos] call BIS_fnc_relativeDirTo;
	deleteVehicle _tmp_obj;

	_retval = format[_txt,call SO_fnc_intelSource, name _obj, _city select 1, [_dir] call SO_fnc_deg2Compas];

	_retval;

};

// Returns true/false based on the threshold if serverheatlth is impared or not something
// True if 1 or more objects are healthy
// False if all objects are damaged beyond the threshhold
SO_fnc_healthObjects = {
	private ["_objects","_dmg","_cunt","_retval"];

	_objects = _this select 0;
	_dmg	 = _this select 1;

	_cunt = 0;


	{
		if ( getDammage _x >= _dmg ) then { _cunt = _cunt + 1; };
	} foreach _objects;


	if ( _cunt == count _objects ) then {
		_retval = 1;
	} else {
		_retval = 0;
	};

	_retval;

};

// Create a confusing marker
SO_fnc_createMarker = {
	private ["_pos","_marker","_size"];

	_descr 	= _this select 0;
	_pos 	= _this select 1;

	_size 	= 750 + random 250;

	_pos = [_pos, random _size, random 360] call BIS_fnc_relPos;

	_marker = createMarker [_descr,_pos];
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerSize [_size,_size];
	_marker setMarkerAlpha 0.8;
	_marker setMarkerColor "ColorRed";
	_marker setMarkerBrush "FDiagonal";

	_marker;

};

// Create a marker over the city
SO_fnc_createCityMarker = {
	private ["_pos","_marker","_sizeA","_sizeB","_angle","_size"];

	_descr 	= _this select 0;
	_pos 	= _this select 1;
	_sizeA	= _this select 2;
	_sizeB	= _this select 3;
	_angle	= _this select 4;

	//_pos = [_pos, random _size, random 190] call BIS_fnc_relPos;
	if ( _sizeA > _sizeB) then { _size = _sizeA; } else { _size = _sizeB; };

	_marker = createMarker [_descr,_pos];
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerSize [_size,_size];
	_marker setMarkerAlpha 0.8;
	_marker setMarkerDir _angle;
	_marker setMarkerColor "ColorRed";
	_marker setMarkerBrush "FDiagonal";

	_marker;
};

// Load an object composition -- used for snipe scenarios (amongst others)
SO_fnc_loadComposition = {

	private ["_list","_pos","_pos_x","_pos_y","_pos_z","_arr","_obj","_dir"];

	_pos = _this select 0;
	_list = _this select 1;

	_dir = random 360;

	//_pos = [getPos player,20,getDir player ] call BIS_fnc_relPos;

	{
		_pos_x = (_pos select 0) + ((_x select 1) select 0);
		_pos_y = (_pos select 1) + ((_x select 1) select 1);
		_pos_z = (_x select 1) select 2;

		_arr = [_pos_x,_pos_y,_pos_z];

		_obj = createVehicle [(_x select 0),_arr,[],0,"CAN_COLLIDE"];
		// _obj = (_x select 0) createVehicle _arr;
		//_obj setPos _arr;

		_obj setDir ((_dir + (_x select 2) ) - 180);
		_obj setVectorUp surfaceNormal position _obj;
		_obj setVariable ["ALIVE_profileIgnore", true];

	} foreach _list;
};