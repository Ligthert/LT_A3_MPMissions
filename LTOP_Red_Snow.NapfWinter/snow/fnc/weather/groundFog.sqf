/*
Name: groundStorm
Author: IndeedPete
Purpose: Creates some particle fog on ground level. Modification of a script by Ruebe.
----------
Parameters:
_unit - OBJECT (OPTIONAL): Unit to simulate cold breath on. - MyUnit - DEFAULT: Player
_condition - CODE (OPTIONAL): While condition that is being checked in addition to (alive _unit). - {SomeVariable > 0} - DEFAULT: {true}

Returns:
Script handle.
*/

private ["_unit", "_condition", "_handle"];
_unit = [_this, 0, player, [ObjNull]] call BIS_fnc_param;
_condition = [_this, 1, {true}, [{}]] call BIS_fnc_param;

_handle = [_unit, _condition] spawn {
	_unit = _this select 0;
	_condition = _this select 1;
	
	while {(alive _unit) && (call _condition)} do {
		_ran = ceil (random 5);
		_obj = vehicle _unit;
		_pos = position _obj;

		_velocity = [(random 10), (random 10), -1];
		_color = [1.0, 0.9, 0.8];
		_alpha = 0.02 + random 0.02;
		_ps = "#particlesource" createVehicleLocal _pos;
		_ps setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8,0], "", "Billboard", 1, 7, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
		_ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_ps setParticleCircle [0.1, [0, 0, 0]];
		_ps setDropInterval 0.01;

		sleep (random 0.4);
		deleteVehicle _ps;
		_delay = 10 + (random 20);
		sleep _delay;
	};
};

_handle