/*
Name: groundStorm
Author: IndeedPete
Purpose: Creates stormy particles on ground level. Modification of BIS_fnc_sandstorm. Also plays wind sounds when properly defined.
----------
Parameters:
_obj - OBJECT (OPTIONAL): Unit to simulate the storm around. - MyUnit - DEFAULT: Player
_density - NUMBER (OPTIONAL): Density, the smaller the more dense. - 0.01 - DEFAULT: 0.07
_colorCoef - NUMBER (OPTIONAL): Colour coefficient, the smaller the darker. - 0.5 - DEFAULT: 1
_alpha - NUMBER (OPTIONAL): Alpha, visibility of particles. - 1 - DEFAULT: 0.2

Returns:
Particle effect.
*/

private ["_obj","_density","_colorCoef","_pos","_velocity","_relPos","_color","_alpha","_ps"];
_obj = [_this, 0, player, [ObjNull]] call BIS_fnc_param;
_density = [_this, 1, 0.07, [0]] call BIS_fnc_param;
if (_density < 0) then {_density = 0.07};
_colorCoef = [_this, 2, 1, [0]] call BIS_fnc_param;
if (_colorCoef < 0) then {_colorCoef = 1};
_alpha = [_this, 3, 0.2, [0]] call BIS_fnc_param;
if (_alpha < 0) then {_alpha = 0.2};

_pos = position _obj;
_duration = 2;
_velocity = [0,7,1];
_relPos = [-((_velocity select 1) * (_duration / 2)), 0, -6];
_color = [1.0 * _colorCoef, 1.0 * _colorCoef, 1.0 * _colorCoef];
_ps = "#particlesource" createVehicleLocal _pos;  
_ps setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 12, 8, 0], "", "Billboard", 1, _duration, _relPos, _velocity, 1, 1.275, 1, 0, [5], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
_ps setParticleRandom [3, [10, 10, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.05], 0, 0];
_ps setParticleCircle [0.1, [0, 0, 0]];
_ps setDropInterval _density;

[] spawn {
	_sounds = ["ICE_Wind_Long", "ICE_Wind_Medium", "ICE_Wind_Short", "ICE_Wind_Strong"];
	while {true} do  {
		playSound (_sounds call BIS_fnc_selectRandom);
		sleep 30;
	};
};

_ps