// task_secure.sqf by Sacha Ligthert aka /dev/urandom
//
// Version 0.1

// Lets make sure this doesn't interfer with other stuff

private ["_tsk","_sideHQ","_grp1","_hill","_newpos","_my_unit","_marker_name","_marker","_object","_description","_title","_base","_trg"];

// Parse incoming parameters.
_tsk 	= _this select 0;

_sideHQ = createCenter east;
_grp1 = createGroup east;

//////////////////////////////////
// MAGIC!
// Create the scenario here!

_newpos = call SO_fnc_randomPos;

_template = template_taskSecure call BIS_fnc_selectRandom;
_base = _template select 4;
_composition = base_compositions select _base;

[_newpos,_composition] call SO_fnc_loadComposition;

_my_unit = _grp1 createUnit [(_template select 0) select 0, _newpos, [], 0, "NONE"];
_grp1 setVariable ["ALIVE_profileIgnore", true]; // group level var!
_my_unit setDir random 360;
_my_unit setCaptive true;
_my_unit setVariable ["ALIVE_profileIgnore", true];

[getpos _my_unit] call SO_fnc_createPatrol;

_marker_name = format["marker_%1",round random 9999];
_marker = createMarker [_marker_name, getpos _my_unit];

// Either you can have the quest marker be directly on a unit or no quest markers.
// was _object = _marker;
_object = _my_unit;

// Create a trigger that triggers
// This should be local...
// ...to the server
_trg=createTrigger["EmptyDetector",_newpos];
_trg setTriggerArea[50,50,0,false];
_trg setTriggerActivation["EAST","NOT PRESENT",false];
_trg setTriggerStatements["this", "", ""];

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
//waitUntil {!alive _my_unit};
waitUntil {triggerActivated _trg};

// Sign of this task (executed globally)
[[_tsk,"SUCCEEDED",true],"BIS_fnc_taskSetState",true,false] call BIS_fnc_MP;

deleteMarker _marker;

// TODO: Pass an array with objects/units to cleanup.sqf
// Or leave it up to the ALiVE garbage collector
// [[_my_unit],[_marker],getMarkerPos _marker] execVM "scripts/cleanup.sqf";