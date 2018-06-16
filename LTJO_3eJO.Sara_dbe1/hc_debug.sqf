private ["_units"];
while {true} do {
  _units = 0;
  {if (local _x) then {_units=_units+1;};} forEach allUnits;
  "hc_debug" setMarkerText format["%1 units at %2 FPS",_units,diag_fps];
  player sideChat format["%1 units at %2 FPS",_units,diag_fps];
  sleep 60;
};
