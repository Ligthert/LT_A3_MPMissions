while {true} do {
  if ( !(asl isEqualTo objNull) ) then {
    "respawn_west" setMarkerPos (getPos asl);
    "respawn_west" setMarkerDir (random 360);
    sleep 600;
  };
};
