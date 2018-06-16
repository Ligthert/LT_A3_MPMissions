atlas_hitmarkers_fnc_onHit = 
{
	(_this select 0) params ["_target", "_shooter"];
 _shown = false;
	private _player =
	if(isNil "ACE_player")then
	{
		missionNamespace getVariable ["bis_fnc_moduleRemoteControl_unit", player];
	}
	else
	{
		ACE_player
	};
	
    if (alive _target && ! (_shown)) then {
	if (_shooter == _player || ( (_player == gunner vehicle _player) && {vehicle _player == _shooter} ) && {atlas_hitmarkers_lastHit != diag_frameNo} ) then {
		atlas_hitmarkers_layer cutRsc ["atlas_Hitmarker", "PLAIN"];
		atlas_hitmarkers_lastHit = diag_frameNo;
		_shown = true;
	};
	};
	sleep 0.1;
	if (!alive _target && ! (_shown) && isnil {_target getvariable "AH_DONTSHOW"}) then {
		if (_shooter == _player || ( (_player == gunner vehicle _player) && {vehicle _player == _shooter} ) && {atlas_hitmarkers_lastHit != diag_frameNo} ) then {
		atlas_hitmarkers_layer cutRsc ["atlas_killmarker", "PLAIN"];
		atlas_hitmarkers_lastHit = diag_frameNo;
		_target setvariable ["AH_DONTSHOW",1];
		_shown = true;
	};
		
	};
};
/*
atlas_hitmarkers_fnc_onkill = 
{
	(_this select 0) params ["_target", "_shooter"];

	private _player =
	if(isNil "ACE_player")then
	{
		missionNamespace getVariable ["bis_fnc_moduleRemoteControl_unit", player];
	}
	else
	{
		ACE_player
	};
	if (_shooter == _player || ( (_player == gunner vehicle _player) && {vehicle _player == _shooter} ) && {atlas_killmarkers_lastHit != diag_frameNo} ) then {
		atlas_killmarkers_layer cutRsc ["atlas_killmarker", "PLAIN"];
		atlas_killmarkers_lastHit = diag_frameNo;
	};
};