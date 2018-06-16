private ["_marker","_side"];

_marker = _this select 0;
_side = _this select 1;

{
  if ( side _x == _side && (getPos _x) inArea _marker ) then { deleteVehicle _x };
} forEach allUnits
