private ["_gen", "_caller", "_id", "_str", "_tgt", "_dst"];

_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_str = _this select 3 select 0;
_tgt = _this select 3 select 1;
_dst = _this select 3 select 2;

//_tgt setPos [ (getPos _str) select 0, ((getPos _str) select 1) - _dst ];
_tgt setPos ([(getPos _str), _dst , (getDir _gen) ] call BIS_fnc_relPos);
