private ["_tgt"];

_tgt = selectRandom [["jump1","comms1","ao1"],["jump2","comms2","ao2"],["jump3","comms3","ao3"]];

_jump   = _tgt select 0;
_comm   = _tgt select 1;
_ao     = _tgt select 2;

null = [_ao,"LT_CUP_O_RU_EMR",500,16,6,2,6,1,0,1,50,50] spawn lt_fnc_autozone;

waitUntil {lt_param_timer <= 0};

"respawn_west" setMarkerAlpha 0;
"obj1" setMarkerPos (getMarkerPos _comm);

// Execute globally
[_jump] remoteExec ["action_client.sqf",0,false];

// Execute on everything but the server
// [_jump] remoteExec ["action_client.sqf",-2,false];

// When server player
if (isServer and hasInterface) then { [_jump] execVM "action_client.sqf"; };


sleep 1;

plane1 setPos [(getMarkerPos _jump) select 0, (getMarkerPos _jump) select 1, 300];
plane1 setDir 135;

sleep 3;

plane1 setDamage 1;

// obj2
