// flrObj = "F_20mm_Red" createvehicle ((player) ModelToWorld [0,100,200]);
// flrObj setVelocity [0,0,-10];

private ["_wait","_position","_flare","_light"];

wait = 10;

while {true} do {

  _position = ["flares"] call CBA_fnc_randPosArea;

  _flare = "F_20mm_white" createvehicle [_position select 0, _position select 1, 150];
  _flare setVelocity [0,0,-10];

  _light = "#lightpoint" createVehicleLocal (position _flare);
  _light setLightBrightness 3;
  _light setLightAmbient[1.0, 1.0, 1.0];
  _light setLightColor[1.0, 1.0, 1.0];
  _light lightAttachObject [_flare, [0,0,0]];

  sleep wait;

  null = [_flare,_light] execVM "tracker.sqf";

};
