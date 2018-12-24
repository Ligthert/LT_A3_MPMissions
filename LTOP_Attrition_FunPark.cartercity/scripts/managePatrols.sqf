private ["_grp"];
private ["_unit"];
private ["_counter"];

_grp = _this select 0;

while {count units _grp >= 1} do {

  _counter = 0;
  {
    if (_counter == 0) then {
      _unit = _x;
    };
    if ( (getPos _x) select 2 < (getPos _unit) select 2 ) then {
      _unit = _x;
    };
  } foreach allPlayers;

  _grp_waypoints = count waypoints _grp;
  //systemChat format["# of waypoints %1",_grp_waypoints];
  _counter = 0;

  while {_counter <= _grp_waypoints} do {
      deleteWaypoint [_grp, _counter];
      _counter = _counter + 1;
  };

  _wp = _grp addWaypoint [getPos _unit,10,0];
  [_grp, 0] setWaypointCombatMode "RED";
  [_grp, 0] setWaypointFormation "LINE";
  [_grp, 0] setWaypointSpeed "FULL";

  sleep 10;

};
