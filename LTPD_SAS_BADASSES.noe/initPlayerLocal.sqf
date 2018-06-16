["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "respawn_west") < 100) then {
		deleteVehicle _projectile;
		hintC "Happy Trigger Finger Triggered?";
	}}];
