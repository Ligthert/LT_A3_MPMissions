private ["_grp","_veh"];

_grp = [getMarkerPos "spawn1", EAST, (configfile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "8_men_me_t")] call BIS_fnc_spawnGroup;
[_grp,getMarkerPos "obj_inspect"] call BIS_fnc_taskAttack;

sleep 180;
_grp = [getMarkerPos "spawn3", EAST, (configfile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "10_men_me_t")] call BIS_fnc_spawnGroup;
[_grp,getMarkerPos "obj_inspect"] call BIS_fnc_taskAttack;

sleep 120;
_veh = [getMarkerPos "spawn2", 270, "caf_ag_me_t_Offroad_armed_01", EAST] call bis_fnc_spawnVehicle;
_grp = _veh select 2;
[_grp,getMarkerPos "camp2"] call BIS_fnc_taskAttack;