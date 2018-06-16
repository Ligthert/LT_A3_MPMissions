// this addAction ["Jump on Darter","mountDarter.sqf"];

_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_gen removeAction _id;

_caller attachTo [_gen,[0,0,0.08]];

_gen addAction ["Jump off Darter","unmountDarter.sqf"];