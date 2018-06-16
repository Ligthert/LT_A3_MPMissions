private ["_round","_grp","_spawnpos","_veh","_wrecks","_wreck_count","_wreck","_n"];

_round = 0;

_wreck_count = 0;
_wrecks = ["Plane_Fighter_03_wreck_F","Land_UWreck_Heli_Attack_02_F","Land_UWreck_MV22_F","Land_Wreck_BMP2_F","Land_Wreck_BRDM2_F","Land_Wreck_Car_F"," Land_Wreck_Car2_F "," Land_Wreck_Car3_F ","Land_Wreck_Heli_Attack_01_F","Land_Wreck_HMMWV_F","Land_Wreck_Hunter_F","Land_Wreck_Offroad_F","Land_Wreck_Offroad2_F","Land_Wreck_Plane_Transport_01_F","Land_Wreck_Slammer_F","Land_Wreck_Slammer_hull_F","Land_Wreck_Slammer_turret_F","Land_Wreck_T72_turret_F"];

while {_wreck_count != 25} do {
	_spawnpos = [getMarkerPos "defend", 50 + random 450, random 360] call BIS_fnc_relPos;
	_wreck = (_wrecks call bis_fnc_selectRandom) createVehicle _spawnpos;
	_wreck setDir (random 360);
	_wreck_count = _wreck_count + 1;
};


sleep 180;

while { _round <= 24 } do {

	// per 4 spelers 1 van deze groepen?
	_n = ceil ( (count playableUnits)/3);
	while {_n != 0 } do {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_grp = [_spawnpos, EAST, (configfile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
		_n = _n - 1;
	};

	if (_round == 15 or _round == 20) then {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_veh = [_spawnpos, random 360, "O_MRAP_02_hmg_F", EAST] call bis_fnc_spawnVehicle;
		_grp = _veh select 2;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
	};

	if (_round == 20) then {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_veh = [_spawnpos, random 360, "O_APC_Tracked_02_cannon_F", EAST] call bis_fnc_spawnVehicle;
		_grp = _veh select 2;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
	};

	if (_round == 24) then {
		_spawnpos = [getMarkerPos "defend", 1000, random 360] call BIS_fnc_relPos;
		_grp = [_spawnpos, EAST, (configfile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Armored" >> "OIA_TankSection")] call BIS_fnc_spawnGroup;
		[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;
	};

	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep (_round * 15);

	_round = _round + 1;

};


sl_checkUnits = {
	private ["_count"];
	_count = 0;

	{
		if (side _x == EAST) then {
			_count = _count + 1;
		}
	} forEach allUnits;

	_count;

};


waitUntil{ call sl_checkUnits <= 10 };

_veh = [getMarkerPos "support", random 360, "B_Heli_Attack_01_F", WEST] call bis_fnc_spawnVehicle;
_grp = _veh select 2;
[_grp,getMarkerPos "defend"] call BIS_fnc_taskAttack;

sleep 180;

["end1"] call bis_fnc_endMission;