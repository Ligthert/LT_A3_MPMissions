if (!isServer) exitWith {};

private ["_this","_faces","_face"];
_this = _this select 0;
_faces = ["RyanZombieFace1_Glowing","RyanZombieFace2_Glowing","RyanZombieFace3_Glowing","RyanZombieFace4_Glowing","RyanZombieFace5_Glowing","RyanZombieFace6_Glowing"];

if ((local _this) AND (!isPlayer _this)) then {

  _this forceAddUniform "SSF_uniform";
  _this addVest "V_DeckCrew_red_F";
  _this addHeadgear "SSF_Helmet";

  if (gezichten == "rood") then {
    _face = (selectRandom _faces);
    // hint format["face: %1", _face];
    [_this, _face] remoteExec ["setFace", 0, _this];
};
};
