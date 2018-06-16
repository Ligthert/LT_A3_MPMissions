///////////////////////////////////
// Simple Vehicle Repair & Flip Vehicle Script For Arma 3
// by TAW DAZ

_vehicle = _this select 0;

if (player distance _vehicle >= 2) then {
	if (vehicle player == player) then {
		if ("ToolKit" in (items player)) then {
			hint "Please wait 7 seconds for repair/flip";
			player playActionNow "medicStart";
			sleep 7;
			player playActionNow "medicStop";

			_vehicle setdamage ((damage _vehicle)-0.1);
			_vehicle = nil;
			_vehicle = _this select 0;
			_vehicle setvectorup [0,0,1];

		} else { hint "Toolkit required!"; };
	} else {hint "You cannont repair from inside a vehicle";};
} else {hint "To far away from vehicle";};