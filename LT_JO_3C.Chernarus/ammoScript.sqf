// ammoScript by Sacha Ligthert

if (!isServer) exitWith {};

private ["_ammobox","_weapons","_magazines","_items"];
_ammobox = _this select 0;

clearWeaponCargoGlobal _ammobox;
clearMagazineCargoGlobal _ammobox;
clearItemCargoGlobal _ammobox;


_weapons = [["Laserdesignator",1],["launch_NLAW_F",5],["launch_B_Titan_short_F",1]];
_magazines = [["30Rnd_65x39_caseless_mag",40],["30Rnd_65x39_caseless_mag_Tracer",40],["AGM_30Rnd_65x39_caseless_mag_AP",40],["Laserbatteries",5],["20Rnd_762x51_Mag",10],["100Rnd_65x39_caseless_mag",10],["100Rnd_65x39_caseless_mag_Tracer",5],["AGM_M84",10],["1Rnd_Smoke_Grenade_shell",10],["1Rnd_HE_Grenade_shell",10],["Titan_AT",2],["Titan_AP",2],["HandGrenade",24],["SmokeShell",24],["SmokeShellGreen",24]];
_items = [["AGM_CableTie",20],["AGM_EarBuds",24],["AGM_MapTools",24]];

{
	_ammobox addWeaponCargoGlobal [_x select 0, _x select 1];
} forEach _weapons;

{
	_ammobox addMagazineCargoGlobal [_x select 0, _x select 1];
} forEach _magazines;

{
	_ammobox addItemCargoGlobal [_x select 0, _x select 1];
} forEach _items;