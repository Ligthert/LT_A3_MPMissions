// Random shelling by Sacha Ligthert <sacha@lowtac.nl>

if (!isServer) exitWith{};

private ["_pos","_rng","_dly"];

_pos = _this select 0;
_rng = _this select 1;
_dly = _this select 2;

while {true} do {
	null = "M_Mo_82mm_AT_LG" createVehicle ( [_pos, _rng ] call CBA_fnc_randPos );
	sleep _dly;
};