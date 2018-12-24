// _murderZone = _this select 0;

createBomb = {
  private _pos = _this;
  _pos set [2,20];
  createVehicle ["Bo_GBU12_LGB", _pos, [], 0, "NONE"];
};

while {true} do {
  _pos = [selectRandom ["murderZone1","murderZone2","murderZone3"]] call CBA_fnc_randPosArea;
  _myBomb = _pos call createBomb;
  hideObjectGlobal _myBomb;
  sleep (random [3,10,30]);
};
