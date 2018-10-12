while {true} do {
  if ( !(basl isEqualTo objNull) ) then {
    "respawn_guerrila" setMarkerPos (getPos basl);
    "respawn_guerrila" setMarkerDir (random 360);
    sleep 600;
  };
};
