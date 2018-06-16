  private ["_myCenter","_myGroup","_myCas","_pos"];

{

  if ( side _x == east and vehicle _x != _x and !((vehicle _x) isKindOf "Air")  ) then {
    _pos = getPos _x;
    _myCenter = createCenter sideLogic;
    _myGroup = createGroup _myCenter;
    _myCas = _myGroup createUnit ["ModuleCAS_F", _pos,[],0,""];
    _myCas setPos (getPos _x);
    _myCas setDir 180;
    sleep 60;
  };

} forEach allUnits;
