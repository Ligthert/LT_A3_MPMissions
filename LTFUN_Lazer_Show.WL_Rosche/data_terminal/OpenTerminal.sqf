[-1,  {
		_object = _this select 0;
		_caller = _this select 1;
		_id = _this select 2;
		_object removeaction _id;
		[_object,3] call BIS_fnc_dataTerminalAnimate;
		sleep 2;
		with uiNamespace do {
		     disableserialization;
		    _object setObjectTextureGlobal [0,"data_terminal\timer.ogv"];
		    1100 cutRsc ["RscMissionScreen","PLAIN"];
		    _scr = BIS_RscMissionScreen displayCtrl 1100;
		    _scr ctrlSetPosition [-10,-10,0,0];
		    _scr ctrlSetText "data_terminal\timer.ogv";
		    _scr ctrlCommit 0;
		};
}, _this] call CBA_fnc_globalExecute;

uiSleep 12;

createBomb = { private _pos = _this; _pos set [2,20]; createVehicle ["Bo_GBU12_LGB", _pos, [], 0, "NONE"]; };

private _distance = (getMarkerPos "respawn_west") distance (getMarkerPos "respawn_east");
private _steps = ceil (_distance/20);
private _last_pos = getMarkerPos "respawn_west";
for "_i" from 1 to _steps do {
  _last_pos = [_last_pos, _distance/20, (getMarkerPos "respawn_west") getDir (getMarkerPos "respawn_east") ] call BIS_fnc_relPos;
  _last_pos call createBomb;
};


[] spawn {
    sleep 10;
    {
        _x setDamage 1;
    } foreach allUnits;
};
