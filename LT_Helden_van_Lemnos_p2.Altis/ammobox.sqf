/* ammoScript by Sacha Ligthert <sacha@lowtac.nl>

Goals of this script is to empty an ammobox or a vehicle with custom gear

Put the following line in the init of the ammobox or vehicle you wish to setup
 null = [this] execVM "ammobox.sqf";

*/

if (!isServer) exitWith {};

private ["_ammobox","_weapons","_magazines","_items"];
_ammobox = _this select 0;

_ammobox setPosATL [4749.64,12519.3,0.00146103];
_ammobox setDir 44;

clearWeaponCargoGlobal _ammobox;
clearMagazineCargoGlobal _ammobox;
clearItemCargoGlobal _ammobox;
clearBackpackCargoGlobal _ammobox;

_weapons = [["Laserdesignator",1],["ACE_fieldDressing",48],["ACE_morphine",36],["ACE_epinephrine",24],["ACE_bloodIV",12]];
_magazines = [["Titan_AT",5],["ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",100],["Laserbatteries",5],["ACE_M84",10],["HandGrenade",24],["SmokeShell",24],["SmokeShellGreen",24],["SatchelCharge_Remote_Mag",2]];
_items = [["ACE_CableTie",20],["ACE_Clacker",2],["ACE_NVG_Wide",15]];
_backpacks = [["tf_rt1523g_black",5]];


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