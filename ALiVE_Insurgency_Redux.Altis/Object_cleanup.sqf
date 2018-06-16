while {true} do {
	{ deleteVehicle _x; } forEach nearestObjects [getpos ammoBox,["WeaponHolder","GroundWeaponHolder"],50];
	sleep 60;
};