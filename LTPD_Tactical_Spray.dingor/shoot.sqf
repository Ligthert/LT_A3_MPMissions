private ["_unit","_target"];

_unit = _this select 0;
_target = _this select 1;

(group _unit) setBehaviour "COMBAT";

_unit dotarget _target;
sleep 2;
_target setCaptive false;
while {alive _unit} do {
  sleep 0.3;
  _unit setUnitPos "UP";
  _unit dotarget _target;
  _unit setDir ([_unit, _target] call BIS_fnc_dirTo);
  _unit forceWeaponFire [ weaponState _unit select 1, weaponState _unit select 2];
};
