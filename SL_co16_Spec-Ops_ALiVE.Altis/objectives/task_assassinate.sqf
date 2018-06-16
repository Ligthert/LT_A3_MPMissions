// task_destroy.sqf by Sacha Ligthert aka /dev/urandom
//
// Version 0.1

// TODO: Add variation
// TODO: Add name of the unit they need to off.
// TODO: OOTD, able to capture AAF officers and drop them af somewhere.

// Lets make sure this doesn't interfer with other stuff
private ["_tsk","_sideHQ","_grp1","_city","_house","_newpos","_my_unit","_marker_name","_marker","_object","_description","_title","_template"];

// Parse incoming parameters.
_tsk 	= _this select 0;

_sideHQ = createCenter east;
_grp1 = createGroup east;

//////////////////////////////////
// MAGIC!
// Create the scenario here!

_template = template_taskAssassinate call BIS_fnc_selectRandom;

// format: [_randomLoc, _cityName, _cityPos, _cityRadA, _cityRadB, _cityType, _cityAngle];
_city = call SO_fnc_randomCity;
_house = [_city select 2, _city select 3] call SO_fnc_findHouse;

_newpos = (_house select 0) buildingPos (random (_house select 1));

_my_unit = _grp1 createUnit [(_template select 0) select 0, _newpos, [], 0, "NONE"];
_grp1 setVariable ["ALIVE_profileIgnore", true]; // group level var!
_my_unit setDir random 360;
_my_unit setCaptive true;

_object = _my_unit;

//////////////////////////////////
// End of Magic. Now time for the rest of the framework! :)

// Make one big-ass marker for the guys to look for, distort the position a bit.
_marker = [format["marker_%1", random 9999],_city select 2,_city select 3,_city select 4, _city select 6] call SO_fnc_createCityMarker;

// Prepping stuff
_description = [_template select 1,getPos _my_unit,_my_unit] call SO_fnc_compileBriefing;
_title = _template select 2;
_marker_name = _template select 3;

// Create the task (executed globally)
[[_tsk,_description,_title,_marker_name,_marker],"SO_fnc_createTask",true,false] call BIS_fnc_MP;


// Because I am having a hard-time passing an object to setTriggerStatements, we will have to do this the hard way. I am not sure what the impact on FPS will be.
waitUntil {!alive _my_unit};

// Sign of this task (executed globally)
[[_tsk,"SUCCEEDED",true],"BIS_fnc_taskSetState",true,false] call BIS_fnc_MP;

deleteMarker _marker;

// TODO: Pass an array with objects/units to cleanup.sqf
// Or leave it up to the ALiVE garbage collector
// [[_my_unit],[_marker],getMarkerPos _marker] execVM "scripts/cleanup.sqf";