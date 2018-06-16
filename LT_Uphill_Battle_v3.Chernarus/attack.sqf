// configfile >> "CfgGroups" >> "Indep" >> "CUP_I_NAPA" >> "Infantry" >> "CUP_I_NAPA_InfSquad_Assault"

private ["_round","_grp","_spawnpos","_count"];

_round = 0;
_count = ceil(count(playableUnits)/2);

while { _round <= _count } do {
	_spawnpos = [getMarkerPos "obj", 400, random 360] call BIS_fnc_relPos;
	_grp = [_spawnpos, resistance, (configfile >> "CfgGroups" >> "Indep" >> "CUP_I_NAPA" >> "Infantry" >> "CUP_I_NAPA_InfSquad_Assault")] call BIS_fnc_spawnGroup;
	[_grp, "snd"] call CBA_fnc_taskSearchArea;

	sleep 10;

	_round = _round + 1;
};
