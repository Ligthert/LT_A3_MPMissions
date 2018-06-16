// configfile >> "CfgGroups" >> "Indep" >> "CUP_I_NAPA" >> "Infantry" >> "CUP_I_NAPA_InfSquad_Assault"

private ["_round","_grp","_spawnpos","_count"];

_round = 0;
_count = ceil(count(playableUnits)/2);

while { _round <= _count } do {
	_spawnpos = [getMarkerPos "obj", 600, random 360] call BIS_fnc_relPos;
	_grp = [_spawnpos, WEST, (configfile >> "CfgGroups" >> "Indep" >> "CUP_I_NAPA" >> "Infantry" >> "CUP_I_NAPA_InfSquad_Assault")] call BIS_fnc_spawnGroup;
	[_grp,getMarkerPos "obj"] call BIS_fnc_taskAttack;

	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 10;

	_round = _round + 1;
};