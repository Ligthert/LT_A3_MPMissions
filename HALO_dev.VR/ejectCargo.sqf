{
	_x action ["EJECT", vehicle _x];
	sleep 2;
} forEach assignedCargo vehicle player;