// place this in the vehicles init.
//this addaction ["Right Vehicle", "unflip.sqf",[],1,false,true,"","player distance cursortarget <3"];


_vehicle = _this select 0;
_vehicle setPosATL [(getPosATL _vehicle) select 0,(getPosATL _vehicle) select 1,(((getPosATL _vehicle) select 2) + 1)];
_vehicle setvectorup [0,0,1];
