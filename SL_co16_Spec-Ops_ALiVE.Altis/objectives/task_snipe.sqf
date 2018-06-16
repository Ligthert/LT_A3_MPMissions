// task_snipe.sqf by Sacha Ligthert aka /dev/urandom
//
// Version 0.1

// FIND A NICE FUCING HILL (SO_fnc_findHill)!
// FIND A NICE OPEN SPOT 800-1600M AWAY!
// PLACE SOME TENTS AND SHIT AND YOUR OFFICER!
// HAVE PLAYER SHOOT THE FUCK
// LET THEM FEEL SPECIAL ABOUT THEMSELVES LIKE THE FUCKING SNIPER CAMPER BUSHWOOKIE FUCING RETARDS THEY ARE!

// Lets make sure this doesn't interfer with other stuff

private ["_tsk","_sideHQ","_grp1","_hill","_newpos","_my_unit","_marker_name","_marker","_object","_description","_title"];

// Parse incoming parameters.
_tsk 	= _this select 0;

_sideHQ = createCenter east;
_grp1 = createGroup east;

//////////////////////////////////
// MAGIC!
// Create the scenario here!


// format: [_randomLoc, _cityName, _cityPos, _cityRadA, _cityRadB, _cityType, _cityAngle];
_hill = call SO_fnc_randomHill;

_newpos = [_hill select 2, 800 + random 400, random 360] call BIS_fnc_relPos;
while { [_newpos,500] call SO_fnc_nearWater == 1 } do {
	_newpos = [_hill select 2, 800 + random 400, random 360] call BIS_fnc_relPos;
};

_template = template_taskSnipe call BIS_fnc_selectRandom;
_composition = compositions call BIS_fnc_selectRandom;

[_newpos,_composition] call SO_fnc_loadComposition;

_my_unit = _grp1 createUnit [(_template select 0) select 0, _newpos, [], 0, "NONE"];
_grp1 setVariable ["ALIVE_profileIgnore", true]; // group level var!
_my_unit setDir random 360;
_my_unit setCaptive true;

[getpos _my_unit] call SO_fnc_createPatrol;

_marker_name = format["marker_%1",round random 9999];
_marker = createMarker [_marker_name, getpos _my_unit];

// Either you can have the quest marker be directly on a unit or no quest markers.
// was _object = _marker;
_object = _my_unit;

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
waitUntil {!alive _my_unit};

// Sign of this task (executed globally)
[[_tsk,"SUCCEEDED",true],"BIS_fnc_taskSetState",true,false] call BIS_fnc_MP;

deleteMarker _marker;

// TODO: Pass an array with objects/units to cleanup.sqf
// Or leave it up to the ALiVE garbage collector
// [[_my_unit],[_marker],getMarkerPos _marker] execVM "scripts/cleanup.sqf";