_locs = [ [gcamp1,hcamp1], [gcamp2,hcamp2], [gcamp3,hcamp3], [gcamp4,hcamp4], [gcamp5,hcamp5], [gcamp6,hcamp6] ];

_x = random [0,2,5];
_loc = _locs select _x;

guard1 setPosATL (getPosATL (_loc select 0));
hostage1 setPosATL (getPosATL (_loc select 1));
