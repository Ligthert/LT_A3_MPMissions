/*
Name: snowStorm
Author: IndeedPete
Purpose: Creates stormy snow fall around unit. Modification of a script by Ruebe.
----------
Parameters:
_unit - OBJECT (OPTIONAL): Unit to simulate snow around. - MyUnit - DEFAULT: Player
_condition - CODE (OPTIONAL): While condition that is being checked in addition to (alive _unit). - {SomeVariable > 0} - DEFAULT: {true}

Returns:
Script handle.
*/

private ["_unit", "_condition", "_handle"];
_unit = [_this, 0, player, [ObjNull]] call BIS_fnc_param;
_condition = [_this, 1, {true}, [{}]] call BIS_fnc_param;

_handle = [_unit, _condition] spawn {
	_obj = _this select 0;
	_condition = _this select 1;
	_pos = position (vehicle _obj);
	
	/*
	_condition spawn {
		while {(call _this)} do	{
			enableEnvironment false;
			sleep 60;
		};
	};
	*/

	_d = 15;
	_h = 12;
	_h1 = 8;
	_h2 = 4;
	_density = 20000;

	_fog1 = "#particlesource" createVehicleLocal _pos;
	_fog1 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10, [0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,	[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
	_fog1 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
	_fog1 setParticleCircle [0.001, [0, 0, -0.12]];
	_fog1 setDropInterval 0.01;

	_fog2 = "#particlesource" createVehicleLocal _pos;
	_fog2 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10, [0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,	[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
	_fog2 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
	_fog2 setParticleCircle [0.001, [0, 0, -0.12]];
	_fog2 setDropInterval 0.01;

	_fog3 = "#particlesource" createVehicleLocal _pos;
	_fog3 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10, [0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,	[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
	_fog3 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
	_fog3 setParticleCircle [0.001, [0, 0, -0.12]];
	_fog3 setDropInterval 0.01;

	while {(alive _obj) && (call _condition)} do {
		_a = 0;
		while {_a < _density} do {
			_pos = position (vehicle _obj);
			_fog1 setPos _pos;
			_fog2 setPos _pos;
			_fog3 setPos _pos;
			0 setRain 0;

			_dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle _obj select 0)*1)), ((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle _obj select 0)*1)), ((_pos select 2) + _h)];
			drop [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""]; 

			_dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle _obj select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle _obj select 0)*1)),((_pos select 2) + _h1)];
			drop [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];

			_dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle _obj select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle _obj select 0)*1)),((_pos select 2) + _h2)];
			drop [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];
			
			_a = _a + 1;
		};
		sleep 0.2;
	};
	
	{deleteVehicle _x} forEach [_fog1, _fog2, _fog3];
};

_handle