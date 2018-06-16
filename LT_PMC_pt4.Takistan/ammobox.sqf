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

_weapons = [["ACE_fieldDressing",24],["ACE_morphine",24],["ACE_epinephrine",24],["ACE_bloodIV",24],["launch_NLAW_F",6]];
_magazines = [["HandGrenade",24],["SmokeShell",24],["SmokeShellGreen",24],["PMC_m249gt_mag",5],["PMC_m4262_mag",30],["PMC_m4318_mag",30]];
_items = [["ACE_CableTie",20],["ItemGPS",5]];


{
	_ammobox addWeaponCargoGlobal [_x select 0, _x select 1];
} forEach _weapons;

{
	_ammobox addMagazineCargoGlobal [_x select 0, _x select 1];
} forEach _magazines;

{
	_ammobox addItemCargoGlobal [_x select 0, _x select 1];
} forEach _items;
