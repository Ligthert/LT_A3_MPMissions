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


	_weapons = [["CUP_arifle_AK74",25],["CUP_lmg_PKM",10],["CUP_launch_RPG7V",10],["FirstAidKit",80],["Medikit",10]];
	_magazines = [["CUP_30Rnd_545x39_AK_M",200],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",100],["CUP_PG7VL_M",40],["CUP_HandGrenade_RGD5",50],["SmokeShell",100],["SatchelCharge_Remote_Mag",5]];
	_items = [["CUP_optic_Kobra",40]];

	{
		_ammobox addWeaponCargoGlobal [_x select 0, _x select 1];
	} forEach _weapons;

	{
		_ammobox addMagazineCargoGlobal [_x select 0, _x select 1];
	} forEach _magazines;

	{
		_ammobox addItemCargoGlobal [_x select 0, _x select 1];
	} forEach _items;

	sleep 1800;

}
