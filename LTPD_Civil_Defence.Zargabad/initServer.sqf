// configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons"

private ["_round"];

_round = 0;

while { _round <= 16 } do {
	_spawnpos = [getMarkerPos "defend", 600, (( 270 ) + random 180)] call BIS_fnc_relPos;
	_grp = [_spawnpos, WEST, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons")] call BIS_fnc_spawnGroup;
	[_grp, "defend"] call CBA_fnc_taskSearchArea;

	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 30;

	_round = _round + 1;
};
