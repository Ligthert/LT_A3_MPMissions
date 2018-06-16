while {true} do {
	{ deleteVehicle _x; } forEach nearestObjects [getpos ammobox,["WeaponHolder","GroundWeaponHolder"],50];
	sleep 60;
};