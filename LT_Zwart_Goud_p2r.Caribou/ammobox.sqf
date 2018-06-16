/* ammoScript by Sacha Ligthert <sacha@lowtac.nl>

Goals of this script is to empty an ammobox or a vehicle with custom gear

Put the following line in the init of the ammobox or vehicle you wish to setup
 null = [this] execVM "ammobox.sqf";

*/

if (!isServer) exitWith {};

private ["_ammobox","_weapons","_magazines","_items"];
_ammobox = _this select 0;

clearWeaponCargoGlobal _ammobox;
clearMagazineCargoGlobal _ammobox;
clearItemCargoGlobal _ammobox;
clearBackpackCargoGlobal _ammobox;

_weapons = [["Laserdesignator",1],["CUP_launch_M136",5],["launch_B_Titan_short_F",1],["ACE_fieldDressing",24],["ACE_morphine",24],["ACE_epinephrine",24],["ACE_bloodIV",24]];
_magazines = [["ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",100],["Laserbatteries",5],["CUP_5Rnd_86x70_L115A1",10],["CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249",10],["NLD_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",5],["ACE_M84",10],["1Rnd_Smoke_Grenade_shell",10],["1Rnd_HE_Grenade_shell",10],["Titan_AT",2],["Titan_AP",2],["CUP_M136_M",10],["HandGrenade",24],["SmokeShell",24],["SmokeShellGreen",24]];
_items = [["ACE_CableTie",20],["ACE_Clacker",2]];


{
	_ammobox addWeaponCargoGlobal [_x select 0, _x select 1];
} forEach _weapons;

{
	_ammobox addMagazineCargoGlobal [_x select 0, _x select 1];
} forEach _magazines;

{
	_ammobox addItemCargoGlobal [_x select 0, _x select 1];
} forEach _items;
