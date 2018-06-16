execvm "infected.sqf";
// "Debug tools"//
//
["click", "onMapSingleClick", { player setPos _pos; }] call BIS_fnc_addStackedEventHandler; 
GroupGUI = compile preprocessFileLineNumbers "DEBUG\group_gui.sqf";
waituntil {!(IsNull (findDisplay 46))};
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 219) then {createDialog 'GLO_GROUP_GUI'}"]; 
