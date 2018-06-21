private ["_jump","_pos","_chute"];

_jump = _this select 0;
_pos = (getMarkerPos _jump) getPos [random 100, random 360];
player setPos [_pos select 0, _pos select 1, 200];
_chute = "Steerable_Parachute_F" createVehicle [0,0,200];
_chute setPos [getPos player select 0, getPos player select 1, 200];
player moveIndriver _chute;

["task1",true,["Time to go home boys!","Go home!","Go Home"],nil, "FAILED"] call BIS_fnc_setTask;

sleep 20;

[true,"task2",["We might know where to GTFO if we knew where need to be. There should be a comms-relay nearby which we can hack with a knife and a paperclip to make contact with HQ. Hug the container near the base of the tower and find out!","Hack comms-relay","Hack comms-relay"],"obj1","CREATED",0] call BIS_fnc_taskCreate;

// ["task2",true,["We might know where to GTFO if we knew where need to be. There should be a comms-relay nearby which we can hack with a knife and a paperclip to make contact with HQ. Climb the tower and find out!","Hack comms-relay","Hack comms-relay"],nil, "SUCCEEDED"] call BIS_fnc_setTask;
// "obj2" setMarkerPos (getMarkerPos "msta");
// [true,"task3",["Time to really go home boys!","Really go home!","Really go Home"],[6000000,6000000,0],"CREATED",0] call BIS_fnc_taskCreate;
