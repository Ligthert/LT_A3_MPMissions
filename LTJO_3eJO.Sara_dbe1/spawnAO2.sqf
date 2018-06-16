diag_log "======= Starting spawnAO2.sqf";

private ["_round"];

_round = 0;

while { _round <= 16 } do {
	_grp = [getMarkerPos "ao2", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam")] call BIS_fnc_spawnGroup;
  null = [(leader _grp),"ao2","random","nofollow","noai"] execVM "ups.sqf";
	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 1;

	_round = _round + 1;
};

sleep 5;

_grp = [getMarkerPos "city1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city1","random","nofollow"] execVM "ups.sqf";
sleep 1;

_grp = [getMarkerPos "city1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city1","random","nofollow"] execVM "ups.sqf";
sleep 1;

_grp = [getMarkerPos "city2", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city2","random","nofollow"] execVM "ups.sqf";
sleep 1;

_grp = [getMarkerPos "city2", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city2","random","nofollow"] execVM "ups.sqf";
sleep 1;

// Garrison
_grp = [getMarkerPos "garrison5", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison5", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison5", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison6", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam")] call BIS_fnc_spawnGroup;
null = [(leader _grp),50, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;
