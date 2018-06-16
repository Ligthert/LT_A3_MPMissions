if (isDedicated) exitWith{};

private ["_wPos","_veh","_chute","_g1","_playDir"];

_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_gen removeAction _id;

_wPos = screenToWorld [0.5,0.5];
_playDir = getDir player - 180;

_veh = "WAP_03_NATO_AS" createvehicle [random 100,random 100,random 100];
_veh setPos [_wPos select 0,_wPos select 1,1500.00];
_veh setDir _playDir;

_g1 = "SmokeShell" createVehicle [0,0,0];
_g1 setPos [getPos _veh select 0, getPos _veh select 1, getPos _veh select 2];
_g1 attachTo [_veh,[-1.5,0,0]];

_g1 = "SmokeShell" createVehicle [0,0,0];
_g1 setPos [getPos _veh select 0, getPos _veh select 1, getPos _veh select 2];
_g1 attachTo [_veh,[1.5,0,0]];

_g1 = "SmokeShell" createVehicle [0,0,0];
_g1 setPos [getPos _veh select 0, getPos _veh select 1, getPos _veh select 2];
_g1 attachTo [_veh,[0,0,2.5]];

_g1 = "SmokeShell" createVehicle [0,0,0];
_g1 setPos [getPos _veh select 0, getPos _veh select 1, getPos _veh select 2];
_g1 attachTo [_veh,[0,0,2.5]];

waitUntil { getPos _veh select 2 < 5 };

_chute = "Steerable_Parachute_F" createVehicle [0,0,0];
_chute hideObjectGlobal true;
_chute setPos [getPos _veh select 0, getPos _veh select 1, getPos _veh select 2];
_chute setDir _playDir;
_veh attachTo[_chute,[0,0,-5]];

waitUntil { getPos _veh select 2 < 1 };
deleteVehicle _chute;