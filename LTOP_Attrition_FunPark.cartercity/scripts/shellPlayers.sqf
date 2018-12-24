shellPlayer = {
  _pos = _this;
  _pos set [2,20];
  _myBomb = createVehicle ["Bo_GBU12_LGB", _pos, [], 0, "NONE"];
  hideObjectGlobal _myBomb;
};

while {true} do {

  private ["_unit"];
  private ["_counter"];

  _counter = 0;

  {
    if (_counter == 0) then {
      _unit = _x;
    };

    if ( (getPos _x) select 2 < (getPos _unit) select 2 ) then {
      _unit = _x;
    };

  } foreach allPlayers;

  // systemChat format["Most northern unit: %1",_unit];

  null = ([_unit, (random [50,75,100]), (270+random[0,90,180])] call BIS_fnc_relPos) call shellPlayer;

  sleep (random[60,180,300]);

};
