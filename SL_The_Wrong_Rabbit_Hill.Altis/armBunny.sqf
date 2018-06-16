private ["_bunny","_shitted","_nade"];

_bunny = _this select 0;
_shitted = 1;

while {alive _bunny and _shitted == 1 } do {
	if (  (_bunny distance player) < 4 ) then {
		doStop _bunny;
		_nade = "Grenade" createVehicle position _bunny;
		_shitted = 2;
	};
	sleep 0.3;
};

if ( _shitted == 1 ) then {
	null = "Grenade" createVehicle position _bunny;
};
sleep 5;
deleteVehicle _bunny;