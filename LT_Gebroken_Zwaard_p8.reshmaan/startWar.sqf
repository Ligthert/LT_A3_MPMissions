private ["_vehs"];

execVM "spawnSupport.sqf";

_vehs = [veh1,veh2,veh3,veh4,veh5,veh6,veh7,veh8,veh9,veh10,veh11];
{ while {alive _x and canMove _x} do { null = [_x] execVM "ModuleCAS.sqf"; sleep 60 }; } forEach _vehs;
