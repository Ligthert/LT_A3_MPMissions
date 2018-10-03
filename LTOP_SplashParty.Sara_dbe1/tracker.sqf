private ["_flare","_light"];

_flare = _this select 0;
_light = _this select 1;

waitUntil {!alive _flare};
deleteVehicle _light;
