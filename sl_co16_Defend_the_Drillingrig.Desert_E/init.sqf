enableSaving [false, false];

execVM "R3F_LOG\init.sqf";



if (isServer) then {
	nul = [storage, [bag1, bag2, bag3, bag4, bag5, bag6, bag7, bag8, bag9, bunkers1, bunkers2, bunkers3, bunkers4, hbar1, hbar2, hbar3, hbar4]] execVM "R3F_LOG\USER_FUNCT\auto_load_in_vehicle.sqf";
	execVM "attack.sqf";
};