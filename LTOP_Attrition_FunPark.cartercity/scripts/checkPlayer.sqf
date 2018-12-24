bombPlayer = {
  private _pos = getPosATL player;
  _pos set [2,20];
  _myBomb = createVehicle ["Bo_GBU12_LGB", _pos, [], 0, "NONE"];
  hideObjectGlobal _myBomb;
};

while {true} do {
  if ( (getPos player) inArea "murderZone1" or (getPos player) inArea "murderZone2" ) then {
    call bombPlayer;
  };
  sleep 5;
};
