[] spawn {

	while { true } do {
		{
			if ( side _x == side player and (!(_x getVariable ["hitEH", false])) ) then {
				_x setVariable ["hitEH", true, true];
				_x addEventHandler ["Hit", { null = [_this select 0, [_this select 0, _this select 1] call bis_fnc_dirTo ] execVM "hitIndicator.sqf"; } ];
			}
		} forEach allUnits;
	    sleep 30;
	};
};