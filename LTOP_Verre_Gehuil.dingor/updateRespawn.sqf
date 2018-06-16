sleep 60;

while {alive partybus} do {
  "respawn_west" setMarkerPos (getPos partybus);
  "respawn_west" setMarkerDir (getDir partybus);
  sleep 1;
};
