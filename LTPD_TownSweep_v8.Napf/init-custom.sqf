// Place you mission specific content here.

call LT_fnc_town_init;

_ts_main = ["townsweep_main","Town Sweep","",{},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _ts_main ] call ace_interact_menu_fnc_addActionToObject;

_action = ["townsweep_select_AO","Select AO","",{call lt_fnc_town_select},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
[player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["townsweep_increase_AO","Increase AO (+100m)","",{call lt_fnc_town_increase},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
[player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["townsweep_decrease_AO","Decrease AO (+100m)","",{call lt_fnc_town_decrease},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
[player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["townsweep_activate_AO","Populate AO","",{call lt_fnc_town_populate},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
[player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

// _action = ["townsweep_activate_AO","Bring back AO","",{ "ao" setMarkerAlpha 0.5 },{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
// [player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;
