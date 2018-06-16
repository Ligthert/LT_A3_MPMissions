// hint format["Dir: %1",[_this select 0, _this select 1] call bis_fnc_dirTo]; }



// tgt addEventHandler ["Hit", { null = [_this select 0, [_this select 0, _this select 1] call bis_fnc_dirTo ] execVM "hitIndicator.sqf"; } ];

if (player == player) then {
	null = execVM "initIndicator.sqf";
};