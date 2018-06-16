diag_log "======= Starting spawnAO1.sqf";

private ["_round"];

_round = 0;

while { _round <= 16 } do {
	_grp = [getMarkerPos "ao1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam")] call BIS_fnc_spawnGroup;
  null = [(leader _grp),"ao1","random","nofollow","noai"] execVM "ups.sqf";
	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 1;

	_round = _round + 1;
};


// Garrison #1
_grp = [getMarkerPos "garrison", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),75, true,[100,4],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),75, true,[100,4],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),75, true,[100,4],true] execVM "Garrison_script.sqf";
sleep 1;


// Garrison #2
_grp = [getMarkerPos "garrison2", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),35, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison2", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),35, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;


// Garrison #3
_grp = [getMarkerPos "garrison3", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),50, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison3", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),50, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

// Garrison #4
_grp = [getMarkerPos "garrison4", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison4", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison4", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison4", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),100, true,[100,32],true] execVM "Garrison_script.sqf";
sleep 1;
