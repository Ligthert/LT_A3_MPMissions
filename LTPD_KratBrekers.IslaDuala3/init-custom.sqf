// Place you mission specific content here.

if (call ALIVE_fnc_isServerAdmin) then {
  town_selected = 0;
  town_pos = [0,0];
  town_size = 150;

  _marker = createMarker ["ao",town_pos];
  "ao" setMarkerColor "ColorRed";
  "ao" setMarkerAlpha 0.5;
  "ao" setMarkerShape "ELLIPSE";
  "ao" setMarkerSize [town_size,town_size];

  _ts_main = ["townsweep_main","KratBrekers","",{},{true}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"], _ts_main ] call ace_interact_menu_fnc_addActionToObject;

  _action = ["townsweep_select_AO","Select AO","",{execVM "town_select.sqf";},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
  [player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

  _action = ["townsweep_increase_AO","Increase AO (+100m)","",{execVM "town_increase.sqf";},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
  [player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

  _action = ["townsweep_decrease_AO","Decrease AO (+100m)","",{execVM "town_decrease.sqf";},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
  [player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

  _action = ["townsweep_activate_AO","Fixate AO","",{execVM "town_populate.sqf";},{call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
  [player, 1,["ACE_SelfActions","townsweep_main"], _action] call ace_interact_menu_fnc_addActionToObject;

};
