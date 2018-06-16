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

_weapons = [["Laserdesignator",2],["ACE_fieldDressing",48],["ACE_morphine",24],["ACE_epinephrine",12],["ACE_bloodIV",6],["launch_B_Titan_short_F",1]];
_magazines = [["Titan_AT",3],["ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",100],["Laserbatteries",5],["ACE_M84",10],["HandGrenade",24],["SmokeShell",24],["SmokeShellGreen",24],["SatchelCharge_Remote_Mag",2]];
_items = [["ACE_CableTie",20],["ACE_Clacker",2],["ACE_NVG_Wide",15]];
_backpacks = [["B_Respawn_TentDome_F",1],["B_Parachute",15],["tf_rt1523g_black",5]];


{
	_ammobox addWeaponCargoGlobal [_x select 0, _x select 1];
} forEach _weapons;

{
	_ammobox addMagazineCargoGlobal [_x select 0, _x select 1];
} forEach _magazines;

{
	_ammobox addItemCargoGlobal [_x select 0, _x select 1];
} forEach _items;

{
	_ammobox addBackpackCargoGlobal [_x select 0, _x select 1];
} forEach _backpacks;