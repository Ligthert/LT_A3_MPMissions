if (isDedicated) exitWith{};

while {1==1} do {

	// Wait until the player steps into an airplane or chopper.
	waitUntil {(vehicle player) isKindOf "Air"};

	// Wait until the player has left the vehicle.
	// Should return true
	waitUntil {vehicle player==player and (getPos player) select 2 > 200};

	null = execVM "halo.sqf";

	waitUntil {isTouchingGround player};

};