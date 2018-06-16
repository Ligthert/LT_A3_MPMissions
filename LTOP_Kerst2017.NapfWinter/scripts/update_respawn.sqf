sleep 60;

while {gamestate == "normal"} do {
  "respawn_west" setMarkerPos (getPos asql);
  "respawn_west" setMarkerDir (random 360);
  sleep 60;
};
