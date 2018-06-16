/* ammoScript by Sacha Ligthert <sacha@lowtac.nl>

Goals of this script is to empty an ammobox or a vehicle with custom gear

Put the following line in the init of the ammobox or vehicle you wish to setup
 null = [this] execVM "ammobox.sqf";

*/

if (!isServer) exitWith {};

private ["_ammobox","_weapons","_magazines","_items"];
_ammobox = _this select 0;

while {true} do {

	clearWeaponCargoGlobal _ammobox;
	clearMagazineCargoGlobal _ammobox;
	clearItemCargoGlobal _ammobox;
	clearBackpackCargoGlobal _ammobox;

	_weapons = [["Laserdesignator",16],["CUP_launch_M136",20]];
	_magazines = [["CUP_30Rnd_556x45_Stanag",250],["Laserbatteries",16],["CUP_5Rnd_86x70_L115A1",100],["CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249",100],["ACE_M84",100],["1Rnd_Smoke_Grenade_shell",100],["1Rnd_HE_Grenade_shell",100],["CUP_M136_M",60],["HandGrenade",240],["SmokeShell",240],["SmokeShellGreen",240]];
	_items = [["ACE_CableTie",20],["ACE_Clacker",20],["ACE_EarPlugs",100],["ACE_fieldDressing",100],["ACE_morphine",100],["ACE_epinephrine",100],["ACE_bloodIV",50],["ItemGPS",50]];
	_backpacks = [["tf_rt1523g_black",16]];


	{ _ammobox addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _weapons;
	{ _ammobox addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _magazines;
	{ _ammobox addItemCargoGlobal [_x select 0, _x select 1]; } forEach _items;
	{ _ammobox addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _backpacks;

	sleep 600;

};
