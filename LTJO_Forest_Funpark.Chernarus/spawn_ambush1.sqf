private ["_pos","_grp"];
_pos = ["spawn_inf1"] call CBA_fnc_randPosArea;
_grp = [east, 8, _pos, chdkz_units] call lt_fnc_spawnGroup;
_grp addWaypoint [getMarkerPos "staging1",0];
[_grp,0] setWaypointBehaviour "STEALTH";
[_grp,0] setWaypointFormation "LINE";

_pos = ["spawn_inf2"] call CBA_fnc_randPosArea;
_grp = [east, 8, _pos, chdkz_units] call lt_fnc_spawnGroup;
_grp addWaypoint [getMarkerPos "staging2",0];
[_grp,0] setWaypointBehaviour "STEALTH";
[_grp,0] setWaypointFormation "LINE";

_pos = ["spawn_inf2"] call CBA_fnc_randPosArea;
_grp = [east, 8, _pos, chdkz_units] call lt_fnc_spawnGroup;
_grp addWaypoint [getMarkerPos "staging3",0];
[_grp,0] setWaypointBehaviour "STEALTH";
[_grp,0] setWaypointFormation "LINE";

_pos = ["spawn_inf3"] call CBA_fnc_randPosArea;
_grp = [east, 8, _pos, chdkz_units] call lt_fnc_spawnGroup;
_grp addWaypoint [getMarkerPos "staging4",0];
[_grp,0] setWaypointBehaviour "STEALTH";
[_grp,0] setWaypointFormation "LINE";

_pos = ["spawn_inf3"] call CBA_fnc_randPosArea;
_grp = [east, 8, _pos, chdkz_units] call lt_fnc_spawnGroup;
_grp addWaypoint [getMarkerPos "staging5",0];
[_grp,0] setWaypointBehaviour "STEALTH";
[_grp,0] setWaypointFormation "LINE";
