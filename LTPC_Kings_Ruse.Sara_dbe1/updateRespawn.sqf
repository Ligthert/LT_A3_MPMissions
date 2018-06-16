while {true} do {
  sleep 60;
  if (alive veh_respawn1 and speed veh_respawn1 == 0) then { "respawn_guerrila_1" setMarkerPos (getPos veh_respawn1) };
  if (alive veh_respawn2 and speed veh_respawn2 == 0) then { "respawn_guerrila_2" setMarkerPos (getPos veh_respawn2) };
}
