{ _x disableTIEquipment true; } foreach vehicles;

player enableFatigue false;

while {true} do {
		hndl = ppEffectCreate ["colorCorrections", 1501];
		hndl ppEffectEnable true;
		hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.20], [0.8, 0.74, 0.63, 0.40], [0.8, 0.74, 0.63, 0.30]];
		[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
		hndl ppEffectCommit 0;
		0 setFog 0.8;
		sleep 60;
};