// flrObj = "F_20mm_Red" createvehicle ((player) ModelToWorld [0,100,200]);
// flrObj setVelocity [0,0,-10];

private ["_wait","_position","_flare"];

_marker = _this select 0;
_wait = _this select 1;

while {true} do {

  _position = [_marker] call CBA_fnc_randPosArea;

  _flare = "F_20mm_white" createvehicle [_position select 0, _position select 1, 300];
  _flare setVelocity [0,0,-10];

  _light = "#lightpoint" createVehicleLocal (position _flare);
  _light setLightBrightness 3;
  _light setLightAmbient[1.0, 1.0, 1.0];
  _light setLightColor[1.0, 1.0, 1.0];
  _light lightAttachObject [_flare, [0,0,0]];

  sleep _wait;

  null = [_flare,_light] execVM "tracker.sqf";

};
