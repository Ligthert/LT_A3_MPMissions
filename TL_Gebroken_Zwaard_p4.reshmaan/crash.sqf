if (!isServer) exitWith{};

private ["_pos"];

chop action ["useWeapon",chop,driver chop,1];
sleep 2;
chop action ["useWeapon",chop,driver chop,1];
sleep 2;
chop action ["useWeapon",chop,driver chop,1];
sleep 2;

chop lock 1;
chop allowCrewInImmobile true;

chop setHitPointDamage ["HitVRotor", 1];
sleep 2;
chop setHitPointDamage ["HitEngine", 1];
chop allowDamage false;

waitUntil { (getPos chop) select 2 < 10 };

{
	_x allowDamage false;
	_pos = [chop, 50, random 360] call bis_fnc_relPos;
	_x setPos [_pos select 0, _pos select 1, 0];
	_x setDir (random 360);
} forEach playableUnits;

chop allowDamage true;
chop setDamage 1;

sleep 5;

{ _x allowDamage true; } forEach playableUnits;

sleep 30;

nul=[leadah,"ao","random","min:",44,"max:",48] execVM "scripts\upsmon.sqf";

( group qrf1 ) addWaypoint [getPos chop, 100];
( group qrf2 ) addWaypoint [getPos chop, 100];

sleep 1200;

nul=[qrf1,"ao","random"] execVM "scripts\upsmon.sqf";
nul=[qrf2,"ao","random"] execVM "scripts\upsmon.sqf";