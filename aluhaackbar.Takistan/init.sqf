lastShout = 0;

sl_shout = {
	if ( (time - lastShout) >= 5 ) then { [player, (["akbar1","akbar2","akbar3","akbar4","akbar5","akbar6"] call bis_fnc_selectRandom),50] call CBA_fnc_globalSay3d; lastShout = time; };
	//sleep 10;
	//if (alive player) then { null = "M_Mo_82mm_AT_LG" createVehicle (getPosATL player); };
};

null = [0x14, [false,false,false], {call sl_shout}] call CBA_fnc_addKeyHandler;