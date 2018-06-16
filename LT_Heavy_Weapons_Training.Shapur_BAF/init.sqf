_starts  = [start1,start2,start3,start4,start5,start6];
_ammo    = [ammo1,ammo2,ammo3,ammo4,ammo5,ammo6];
_targets = [car1,car2,car3,car4,car5,car6];

for "_i" from 0 to 5 do
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

_flags = [flagat,flagsniper];

{
	_x addAction ["Teleport naar de Schietbaan", { player setPos ([flagsniper,6,random 360] call bis_fnc_relPos); player setDir (random 360); } ];
	_x addAction ["Teleport naar de AT baan", { player setPos ([flagat,6,random 360] call bis_fnc_relPos); player setDir (random 360); } ];
} forEach _flags;
