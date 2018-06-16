/* Ambient Air Combat script by Sacha Ligthert (sacha@lowtac.nl)

	Requirements:
		marker: aac_start1
		marker: aac_start2
		marker: aac_sad

	null = ["LIB_P47","LIB_FW190F8"] execVM "aac.sqf";

	Make sure the aac_start1 and the aac_start2 markers are on flat ground without any objects
*/

// Go away player!
if (!isServer) exitWith{};

private ["_veh1","_veh2","_veh1_type","_veh2_type","_veh1_array","_veh2_array","_veh1_grp","_veh2_grp","_veh1_dir","_veh2_dir","_veh1_side","_veh2_side"];

_veh1_type = _this select 0;
_veh2_type = _this select 1;

_veh1_array = [(getMarkerPos "aac_start1"), 310, _veh1_type, independent] call bis_fnc_spawnVehicle;
_veh1 = _veh1_array select 0;
_veh1_grp = _veh1_array select 2;
_veh1 setPos [getPos _veh1 select 0, getPos _veh1 select 1, 800];
_veh1_grp addWaypoint [getMarkerPos "aac_sad", 0];
[_veh1_grp, 0] setWaypointType "SAD";

_veh2_array = [(getMarkerPos "aac_start2"), 130, _veh2_type, west] call bis_fnc_spawnVehicle;
_veh2 = _veh2_array select 0;
_veh2_grp = _veh2_array select 2;
_veh2 setPos [getPos _veh2 select 0, getPos _veh2 select 1, 800];
_veh2_grp addWaypoint [getMarkerPos "aac_sad", 0];
[_veh2_grp, 0] setWaypointType "SAD";


while {true} do {

	if (!alive _veh1) then {
		_veh1_array = [(getMarkerPos "aac_start1"), 310,_veh1_type, independent] call bis_fnc_spawnVehicle;
		_veh1 = _veh1_array select 0;
		_veh1_grp = _veh1_array select 2;
		_veh1 setPos [getPos _veh1 select 0, getPos _veh1 select 1, 800];
		_veh1_grp addWaypoint [getMarkerPos "aac_sad", 0];
		[_veh1_grp, 0] setWaypointType "SAD";
	};

	if (!alive _veh2) then {
		_veh2_array = [(getMarkerPos "aac_start2"), 130,_veh2_type, west] call bis_fnc_spawnVehicle;
		_veh2 = _veh2_array select 0;
		_veh2_grp = _veh2_array select 2;
		_veh2 setPos [getPos _veh2 select 0, getPos _veh2 select 1, 800];
		_veh2_grp addWaypoint [getMarkerPos "aac_sad", 0];
		[_veh2_grp, 0] setWaypointType "SAD";
	};

	sleep 60;
};