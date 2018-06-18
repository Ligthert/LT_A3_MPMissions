// Executed locally when player joins mission (includes both mission start and JIP). See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

// initPlayerLocal.sqf specific script.
null = execVM "\lt_template_base\init\initPlayerLocal.sqf";

/*
if (side player == west) then {
  execVM "\lt_template_base\scripts\QS_icons.sqf";
};
*/

//if (player == oco) then {

lt_remcomUnit = 0;
lt_mortar = 0;

execVM "counter.sqf";

_action = ["lt_main_mortar", "Request Mortar Strike", "", { openMap[true,false]; player onMapSingleClick '[_pos,aziz] execVM "fuckPlayers.sqf"; openMap[false,false]; player onMapSingleClick "";';}, {player == oco AND lt_mortar == 0}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["lt_main_CommandUnit", "Command Remote Unit", "", { openMap[true,false]; player onMapSingleClick '[_pos] execVM "bob_spawn.sqf"; player onMapSingleClick "";';}, {player == oco AND lt_remcomUnit == 0}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;
