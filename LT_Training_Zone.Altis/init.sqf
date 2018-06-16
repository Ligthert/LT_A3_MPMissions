diag_log("========== Starting Training Zone ==========");

private ["_base","_i","_starts","_obj","_targets","_tgt","_ammo","_flags"];

// TFR settings
tf_no_auto_long_range_radio = true;

// ACE3 Settings
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player setVariable ["ACE_hasEarPlugsIn", true, true];
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";
player setVariable ["ACE_GForceCoef", 0];

if (isServer) then {

	_base = getPos start1;

	target1 setPos [ _base select 0, (_base select 1) - 50 ];
	ammo1 setPos [ _base select 0, (_base select 1) + 3 ];

	start2 setPos [ (_base select 0) + 6, (_base select 1) ];
	target2 setPos [ (_base select 0) + 6, (_base select 1) - 50 ];
	ammo2 setPos [ (_base select 0) + 6, (_base select 1) + 3 ];

	start3 setPos [ (_base select 0) + 12, (_base select 1) ];
	target3 setPos [ (_base select 0) + 12, (_base select 1) - 50 ];
	ammo3 setPos [  (_base select 0) + 12, (_base select 1) + 3 ];

	start4 setPos [ (_base select 0) + 18, (_base select 1) ];
	target4 setPos [ (_base select 0) + 18, (_base select 1) - 50 ];
	ammo4 setPos [ (_base select 0) + 18, (_base select 1) + 3 ];

	start5 setPos [ (_base select 0) + 24, (_base select 1) ];
	target5 setPos [ (_base select 0) + 24, (_base select 1) - 50 ];
	ammo5 setPos [ (_base select 0) + 24, (_base select 1) + 3 ];

	start6 setPos [ (_base select 0) + 30, (_base select 1) ];
	target6 setPos [ (_base select 0) + 30, (_base select 1) - 50 ];
	ammo6 setPos [ (_base select 0) + 30, (_base select 1) + 3 ];

	start7 setPos [ (_base select 0) + 36, (_base select 1) ];
	target7 setPos [ (_base select 0) + 36, (_base select 1) - 50 ];
	ammo7 setPos [ (_base select 0) + 36, (_base select 1) + 3 ];

};

_starts  = [start1,start2,start3,start4,start5,start6,start7,startAT];
_ammo    = [ammo1,ammo2,ammo3,ammo4,ammo5,ammo6,ammo7,ammoAT];
_targets = [target1,target2,target3,target4,target5,target6,target7,targetAT];

for "_i" from 0 to 7 do
{

	_obj = _ammo select _i;
	_str = _starts select _i;
	_tgt = _targets select _i;
	_base= getPos _obj;

	_obj addAction ["Set target at  50m", "setDist.sqf", [_str,_tgt,50] ];
	_obj addAction ["Set target at 100m", "setDist.sqf", [_str,_tgt,100] ];
	_obj addAction ["Set target at 200m", "setDist.sqf", [_str,_tgt,200] ];
	_obj addAction ["Set target at 300m", "setDist.sqf", [_str,_tgt,300] ];
	_obj addAction ["Set target at 400m", "setDist.sqf", [_str,_tgt,400] ];
	_obj addAction ["Set target at 500m", "setDist.sqf", [_str,_tgt,500] ];
	_obj addAction ["Set target at 600m", "setDist.sqf", [_str,_tgt,600] ];
	_obj addAction ["Set target at 700m", "setDist.sqf", [_str,_tgt,700] ];
	_obj addAction ["Set target at 800m", "setDist.sqf", [_str,_tgt,800] ];
	_obj addAction ["Set target at 900m", "setDist.sqf", [_str,_tgt,900] ];
	_obj addAction ["Set target at 1000m", "setDist.sqf", [_str,_tgt,1000] ];
	_obj addAction ["Set target at 1100m", "setDist.sqf", [_str,_tgt,1100] ];
	_obj addAction ["Set target at 1200m", "setDist.sqf", [_str,_tgt,1200] ];
	_obj addAction ["Set target at 1300m", "setDist.sqf", [_str,_tgt,1300] ];
	_obj addAction ["Set target at 1400m", "setDist.sqf", [_str,_tgt,1400] ];
	_obj addAction ["Set target at 1500m", "setDist.sqf", [_str,_tgt,1500] ];

};

_flags = [flag_rifle,flag_at,flag_loeren,flag_heli,flag_base];

{
	_x addAction ["Teleport naar de Base", { player setPos ([flag_base,6,random 360] call bis_fnc_relPos); player setDir 180; } ];
	_x addAction ["Teleport naar de Schietbaan", { player setPos ([flag_rifle,6,random 360] call bis_fnc_relPos); player setDir 180; } ];
	_x addAction ["Teleport naar de AT baan", { player setPos ([flag_at,6,random 360] call bis_fnc_relPos); player setDir 140; } ];
	_x addAction ["Teleport naar Loeren", { player setPos ([flag_loeren,6,random 360] call bis_fnc_relPos); player setDir 240; } ];
	_x addAction ["Teleport naar Helis en vliegtuigen", { player setPos ([flag_heli,6,random 360] call bis_fnc_relPos); player setDir 140; } ];

} forEach _flags;

_mrkrs = ["obj_atrange","obj_firingrange","obj_heli","obj_loeren"];

{
	null = [west, _x] call BIS_fnc_addRespawnPosition;
} forEach _mrkrs;