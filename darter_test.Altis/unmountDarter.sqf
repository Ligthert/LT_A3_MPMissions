// this addAction ["Jump off Darter","unmountDarter.sqf"];

_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_gen removeAction _id;

detach _caller;

_gen addAction ["Jump on Darter","mountDarter.sqf"];