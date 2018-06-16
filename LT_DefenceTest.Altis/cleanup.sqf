_markers = _this select 0;
_sides = _this select 1;

_markers  = _markers splitString " " joinstring "" splitstring ",";
_sides    = _sides splitString " " joinstring "" splitstring ",";

{
  _unit = _x;
  diag_log format["LT Template Debug::CleanUp: _unit=%1 _x=%2",_unit,_x];
  {
      _marker = _x;
      diag_log format["LT Template Debug::CleanUp: _marker=%1 _x=%2",_marker,_x];
      {
          _side = _x;
          diag_log format["LT Template Debug::CleanUp: _side=%1 _x=%2",_side,_x];
          diag_log format["LT Template Debug::CleanUp: _unit=%1 _marker=%2 _side=%3 side _unit=%4",_unit,_marker,_side,side _unit];

          if ( str (side _unit) == _side && (getPos _unit) inArea _marker ) then {
              deleteVehicle (vehicle _unit);
              deleteVehicle _unit;
          }; // side and inArea check

      } forEach _sides;
  } forEach _markers;
} forEach allUnits;
