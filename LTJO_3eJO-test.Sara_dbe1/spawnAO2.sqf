if (!isServer) exitWith {};

private ["_round"];

_round = 0;

while { _round <= 16 } do {
	_grp = [getMarkerPos "ao2", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam")] call BIS_fnc_spawnGroup;
  null = [(leader _grp),"ao2","random","nofollow"] execVM "ups.sqf";
	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 10;

	_round = _round + 1;
};

sleep 10;

_grp = [getMarkerPos "city1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city1","random","nofollow"] execVM "ups.sqf";

sleep 10;

_grp = [getMarkerPos "city1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city1","random","nofollow"] execVM "ups.sqf";

sleep 10;

_grp = [getMarkerPos "city1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city2","random","nofollow"] execVM "ups.sqf";

sleep 10;

_grp = [getMarkerPos "city1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
null = [(leader _grp),"city2","random","nofollow"] execVM "ups.sqf";
