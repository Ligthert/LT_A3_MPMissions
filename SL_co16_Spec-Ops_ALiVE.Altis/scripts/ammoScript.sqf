// ammoScript by Sacha Ligthert aka /dev/urandom
// null = [this] execVM scripts\ammoScript.sqf;

if (!isServer) exitWith {};

private ["_ammobox","_weapons","_magazines","_items"];
_ammobox = _this select 0;

while {alive _ammobox} do {

	clearWeaponCargoGlobal _ammobox;
	clearMagazineCargoGlobal _ammobox;
	clearItemCargoGlobal _ammobox;

	_weapons = [["srifle_EBR_F",4],["arifle_MX_SW_F",2],["arifle_MX_F",2],["launch_NLAW_F",1],["FirstAidKit",10]];
	_magazines = [["20Rnd_762x51_Mag",10],["30Rnd_65x39_caseless_mag",20],["NLAW_F",5],["30Rnd_65x39_caseless_mag_Tracer",10],["100Rnd_65x39_caseless_mag",5],["100Rnd_65x39_caseless_mag_Tracer",5],["DemoCharge_Remote_Mag",10],["SatchelCharge_Remote_Mag",5]];
	_items = [["acc_pointer_IR",7],["optic_Holosight",4],["optic_Hamr",8],["muzzle_snds_H",3],["muzzle_snds_M",5],["muzzle_snds_B",2],["optic_NVS",4]];

	{ _ammobox addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _weapons;

	{ _ammobox addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _magazines;

	{ _ammobox addItemCargoGlobal [_x select 0, _x select 1]; } forEach _items;

	sleep 3600;
};