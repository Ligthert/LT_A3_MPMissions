while {true} do {
  if ( !(basl isEqualTo objNull) ) then {
    sleep 600;
    "respawn_west" setMarkerPos (getPos basl);
    "respawn_west" setMarkerDir (random 360);
  };
};
