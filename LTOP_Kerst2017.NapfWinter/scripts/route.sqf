sleep 60;

while {deel=="een"} do {
  "route" setMarkerPos (getMarkerPos "route_start");
  ["route",getMarkerPos "route1",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route2",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route3",3] call BIS_fnc_moveMarker; sleep 3;
  ["route",getMarkerPos "route4",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route5",1] call BIS_fnc_moveMarker; sleep 1;
  ["route",getMarkerPos "route6",1] call BIS_fnc_moveMarker; sleep 1;
  ["route",getMarkerPos "route7",1] call BIS_fnc_moveMarker; sleep 1;
  ["route",getMarkerPos "route8",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route9",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route10",1] call BIS_fnc_moveMarker; sleep 1;
  ["route",getMarkerPos "route11",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route12",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route13",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route14",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "route15",2] call BIS_fnc_moveMarker; sleep 2;
  sleep 10;
};

waitUntil {deel=="twee"};

while {deel=="twee"} do {
  "route" setMarkerPos (getMarkerPos "deel2_start");
  ["route",getMarkerPos "deel2_1",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "deel2_2",1] call BIS_fnc_moveMarker; sleep 1;
  ["route",getMarkerPos "deel2_3",1] call BIS_fnc_moveMarker; sleep 1;
  ["route",getMarkerPos "deel2_4",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "deel2_5",2] call BIS_fnc_moveMarker; sleep 2;
  ["route",getMarkerPos "deel2_end",2] call BIS_fnc_moveMarker; sleep 2;
  sleep 10;
};
