if !(hasInterface) exitwith {};

_LetItSnow = {
	private ["_pos","_parray","_snow"];
	_pos = _this select 0;
	_parray = [
	/* 00 */		["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8, 1],
	/* 01 */		"",
	/* 02 */		"Billboard",
	/* 03 */		1,
	/* 04 */		4,
	/* 05 */		[0,0,0],
	/* 06 */		[0,0,0],
	/* 07 */		1,
	/* 08 */		0.000001,
	/* 09 */		0,
	/* 10 */		1.4,
	/* 11 */		[0.05,0.05],
	/* 12 */		[[1,1,1,1]],
	/* 13 */		[0,1],
	/* 14 */		0.02,
	/* 15 */		1.2,
	/* 16 */		"",
	/* 17 */		"",
	/* 18 */		vehicle player
	];

	_snow = "#particlesource" createVehicleLocal _pos;
	_snow setParticleParams _parray;
	_snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
	_snow setParticleCircle [0.0, [0, 0, 0]];
	_snow setDropInterval 0.003;
	_snow;
};

_snow = [getposATL player] call _LetItSnow;