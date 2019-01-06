while {true} do {
  if ( !(basl isEqualTo objNull) ) then {
    "respawn_west" setMarkerPos (getPos basl);
    "respawn_west" setMarkerDir (getDir basl);
    sleep 600;
  };
};
