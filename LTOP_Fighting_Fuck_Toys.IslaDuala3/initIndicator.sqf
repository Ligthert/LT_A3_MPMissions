private "_this";
_this = _this select 0;

if ( (side _this == east) and (!isPlayer _this) ) then {
  _this addEventHandler ["Hit", { null = [_this select 0, [_this select 0, _this select 1] call bis_fnc_dirTo ] execVM "hitIndicator.sqf"; } ];
  oco hcSetGroup [(group _this)];
};
