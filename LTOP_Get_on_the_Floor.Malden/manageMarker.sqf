
while {true} do {
  "move1" setMarkerPos (getMarkerPos "move1_start");
  ["move1",getMarkerPos "move1_end",60] call BIS_fnc_moveMarker;
  // ["move1",60,60] spawn BIS_fnc_blinkMarker;
  sleep 60;
}
