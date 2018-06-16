player enableStamina false;
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";
enableSaving [false, false];
enableSentences false;
STUI_Occlusion = false;
enableEnvironment [false, true];

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;


player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit inArea "base") then {
		deleteVehicle _projectile;
		hintC "No Shooty On Basey Pleasey!";
	}
}];
