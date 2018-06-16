if (!isServer) exitWith {};

private ["_round"];

_round = 0;

// null = [this,"ao1","random","nofollow"] execVM "ups.sqf";

while { _round <= 16 } do {
	_grp = [getMarkerPos "ao1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam")] call BIS_fnc_spawnGroup;
  null = [(leader _grp),"ao1","random","nofollow"] execVM "ups.sqf";
	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 1;

	_round = _round + 1;
};

// null = [this,100, true,[100,4],true] execVM "Garrison_script.sqf";
// configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad"
_grp = [getMarkerPos "garrison", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),75, true,[100,4],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),75, true,[100,4],true] execVM "Garrison_script.sqf";
sleep 1;

_grp = [getMarkerPos "garrison", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),75, true,[100,4],true] execVM "Garrison_script.sqf";
sleep 1;
