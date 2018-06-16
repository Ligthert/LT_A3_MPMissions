private ["_obj","_caller","_id"];
_npc = _this select 0;
_caller = _this select 1;
_id 	= _this select 2;

_npc removeAction _id;
_npc enableAI "MOVE";
[_npc] joinSilent _caller;