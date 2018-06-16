// flrObj = "F_20mm_Red" createvehicle ((player) ModelToWorld [0,100,200]);
// flrObj setVelocity [0,0,-10];

private ["_wait","_position","_flare"];

wait = 60;

while {true} do {

  _position = ["flares"] call CBA_fnc_randPosArea;

  _flare = "F_20mm_white" createvehicle [_position select 0, _position select 1, 250];
  _flare setVelocity [0,0,-10];


  sleep wait;

};
