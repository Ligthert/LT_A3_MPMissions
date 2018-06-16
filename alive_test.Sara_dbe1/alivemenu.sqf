/// if (missionNamespace getVariable ["ace_common", false]) then { hint "ACE is running"; } else { hint "ACE is NOT running"; };

// Step 1. https://github.com/acemod/ACE3/blob/master/addons/interact_menu/functions/fnc_createAction.sqf <-- Create an action
/// Params: class, displayname,icon,statement,condition
// Step 2. https://github.com/acemod/ACE3/blob/master/addons/interact_menu/functions/fnc_addActionToObject.sqf <-- Assign it to an object
/// Params: object, type, menu-tree (array), action


if (missionNamespace getVariable ["ace_common", false]) then {

	diag_log ["ACE3 is running. Starting menu init."];

	// Create the ALiVE main menu
	_ALiVE_main = ["ALiVE_main","ALiVE","x\alive\addons\main\icon_requires_alive.paa",{},{alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _ALiVE_main ] call ace_interact_menu_fnc_addActionToObject;

	/// Create the Admin Actions submenu
	_ALiVE_admin_actions = ["ALiVE_admin_actions","Admin Actions","",{},{call ALiVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "ALiVE_main"], _ALiVE_admin_actions] call ace_interact_menu_fnc_addActionToObject;

	//// Mark active units
	_action = ["ALiVE_admin_action_markActiveUnits", "Mark Active Units", "", {[] call ALIVE_fnc_markUnits}, {call ALiVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "ALiVE_main", "ALiVE_admin_actions"], _action] call ace_interact_menu_fnc_addActionToObject;

	/// Create a player options menu
	_ALiVE_player_options = ["ALiVE_player_options","Player Options","",{},{alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "ALiVE_main"], _ALiVE_player_options] call ace_interact_menu_fnc_addActionToObject;

	///// View distance menu
	_ALiVE_viewDistance = ["ALiVE_viewDistance","View Distance","",{[] call ALiVE_fnc_vDistGuiInit},{alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "ALiVE_main","ALiVE_player_options"], _ALiVE_viewDistance] call ace_interact_menu_fnc_addActionToObject;

} else {
	diag_log ["ACE3 isn't running. Skipping menu init."];
};