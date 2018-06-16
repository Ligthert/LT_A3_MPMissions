private ["_round","_grp","_spawnpos","_veh","_wrecks","_wreck_count","_wreck"];

_round = 0;

while { _round <= 24 } do {

	_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
	_grp = [_spawnpos, EAST, (configfile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
	[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
	_grp allowFleeing 0;

	if (_round == 15 or _round == 20 or _round == 23 or _round == 17 or _round == 24) then {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_veh = [_spawnpos, random 360, "O_MRAP_02_hmg_F", EAST] call bis_fnc_spawnVehicle;
		_grp = _veh select 2;
		_grp allowFleeing 0;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
		_grp allowFleeing 0;
	};

	if (_round == 20 or _round == 22) then {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_veh = [_spawnpos, random 360, "O_APC_Tracked_02_cannon_F", EAST] call bis_fnc_spawnVehicle;
		_grp = _veh select 2;
		_grp allowFleeing 0;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
		_grp allowFleeing 0;
	};

	if (_round == 24) then {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_grp = [_spawnpos, EAST, (configfile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Armored" >> "OIA_TankSection")] call BIS_fnc_spawnGroup;
		_grp allowFleeing 0;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
		_grp allowFleeing 0;
	};

	sleep 180;

	_round = _round + 1;

};