this addEventHandler["hitPart", {{player sideChat format["%1",_x select 5]} foreach _this }];


this addEventHandler["handleDamage", {{player sideChat format["%1",_x select 2]} foreach _this }];



this addEventHandler["hitPart", {{
	_part = _x select 5;
	if ( _part == "wheel_1_1_hide" ) then { this setHit ["wheel_1_1_hide",0]; };
	if ( _part == "wheel_1_2_hide" ) then { this setHit ["wheel_1_2_hide",0]; };
	if ( _part == "wheel_2_1_hide" ) then { this setHit ["wheel_2_1_hide",0]; };
	if ( _part == "wheel_2_2_hide" ) then { this setHit ["wheel_2_2_hide",0]; };
} foreach _this }];


this addEventHandler["Hit",{this setHit ["wheel_1_1_hide",0]; this setHit ["wheel_1_2_hide",0]; this setHit ["wheel_2_1_hide",0]; this setHit ["wheel_2_2_hide",0]; }];



this addEventHandler["handleDamage", {player sideChat format["part: %1; dmg: %2",_this select 1,_this select 2]}];


this addEventHandler["handleDamage",{
	_damage = _this select 2;
	_parts = ["wheel_1_1_steering","wheel_1_2_steering","wheel_2_1_steering","wheel_2_2_steering","motor"];
	if (_this select 1 in _parts) then {
		_damage = 0;
	};
	_damage;
}];