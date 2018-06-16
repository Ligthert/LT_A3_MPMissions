private ["_myCenter","_myGroup","_myCas",_pos];

_pos = getPos (_this select 0);

_myCenter = createCenter sideLogic;
_myGroup = createGroup _myCenter;
_myCas = _myGroup createUnit ["ModuleCAS_F", _pos,[],0,""];
_myCas setPos (getPos (_this select 0));
_myCas setDir 270;
