// playMusic.sqf door Sacha Ligthert voor Lowlands Tactical
//
// Usage: null = [object wat geluid moet maken,deuntje wat afgespeeld moet worden, tijd in seconden] execVM "playMusic.sqf";
//
// 1. Vul description.ext op:
// class CfgSounds
// {
//   sounds[] = {zymosiz};
//   class zymosiz { name="zymosiz"; sound[] = {"zymosiz.ogg", 1, 1, 200}; titles[] = {0,""}; };
// };
//
// 2. Gooi in initServer.sqf het volgende
//   null = [mySpeaker1,"zymosiz",270] execVM "playMusic.sqf";

private ['_obj','_tune','_duration']

_obj        = _this select 0;
_tune       = _this select 1;
_duration   = _this select 2;

sleep 10;

while {alive _obj} do {
  [_obj,["_tune",500,1]] remoteExec ["say3D"];
  sleep _duration;
};
