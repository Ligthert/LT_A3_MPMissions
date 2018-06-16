// task_assasinate.sqf by Sacha Ligthert aka /dev/urandom
//
// Version 0.1

// Lets make sure this doesn't interfer with other stuff
private ["_tsk","_sideHQ","_grp1","_newpos","_unit","_my_unit","_marker_name","_marker","_object","_description","_title","_location","_tent","_unit_array","_dir"];

// Parse incoming parameters.
_tsk 	= _this select 0;

_sideHQ = createCenter east;
_grp1 = createGroup east;


//////////////////////////////////
// MAGIC!
// Create the scenario here!

// Search for a random position
_newpos = call SO_fnc_randomPos;

// This will be our random mission template
_template = template_taskDestroy call BIS_fnc_selectRandom;


// Create the unit.
// TODO: Loop this!
if ( count (_template select 0) == 1) then {
	_dir = random 360;
	_unit = [_newpos, _dir, (_template select 0) select 0, _grp1] call BIS_fnc_spawnVehicle;
	 _grp1 setVariable ["ALIVE_profileIgnore", true]; // group level var!
	_my_unit = _unit select 0;
	_my_unit setVectorDir [0,0,0];
	_my_unit setVariable ["ALIVE_profileIgnore", true];
} else {
	_dir = random 360;
	_unit_array = [];
	{
	_newpos = [_newpos, 10, _dir] call BIS_fnc_relPos;
	_unit = [_newpos, _dir+90, _x, _grp1] call BIS_fnc_spawnVehicle;
	 _grp1 setVariable ["ALIVE_profileIgnore", true]; // group level var!
	_my_unit = _unit select 0;
	_my_unit setVectorDir [0,0,0];
	_unit_array set [count _unit_array, _my_unit];
	} foreach (_template select 0);
};

// Deploy cammo net of desired
if ( (_template select 4) == 1 ) then {
	_tent = "CamoNet_OPFOR_big_F" createVehicle (getPos _my_unit);
	_tent allowDammage false;
	_tent setPos ( getPos _my_unit );
	_tent setDir ( getDir _my_unit + 180 );
};


// Add some patrols
[_newpos] call SO_fnc_createPatrol;

//////////////////////////////////
// End of Magic. Now time for the rest of the framework! :)

// Make one big-ass marker for the guys to look for, distort the position a bit.
_marker = [format["marker_%1", random 9999],getPos _my_unit] call SO_fnc_createMarker;

// Prepping stuff
_description = [_template select 1,getPos _my_unit,_my_unit] call SO_fnc_compileBriefing;
_title = _template select 2;
_marker_name = _template select 3;

// Create the task (executed globally)
[[_tsk,_description,_title,_marker_name,_marker],"SO_fnc_createTask",true,false] call BIS_fnc_MP;


// Because I am having a hard-time passing an object to setTriggerStatements, we will have to do this the hard way. I am not sure what the impact on FPS will be.
// Should replace with a function that checks an array of objects
if ( count (_template select 0) == 1) then {
	waitUntil { getDammage _my_unit > 0.5 };
} else {
	waitUntil { [_unit_array,0.5] call SO_fnc_healthObjects == 1 };
};

// Sign of this task (executed globally)
[[_tsk,"SUCCEEDED",true],"BIS_fnc_taskSetState",true,false] call BIS_fnc_MP;

deleteMarker _marker;

// TODO: Pass an array with objects/units to cleanup.sqf
// Or leave it up to the ALiVE garbage collector
// [[_my_unit],[_marker],getMarkerPos _marker] execVM "scripts\cleanup.sqf";