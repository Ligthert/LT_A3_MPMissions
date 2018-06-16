sleep 5;
["The bomb activates in 10 seconds."] call BIS_fnc_titleText;
sleep 5;
["5 seconds"] call BIS_fnc_titleText;
sleep 5;
["If you aren't driving you are dead!"] call BIS_fnc_titleText;

while {alive player} do {
	sleep 0.5;
	_speed = sqrt ( (velocity player select 0)^2 + (velocity player select 1)^2 + (velocity player select 2)^2 );
	if (  _speed < 13.8889 ) then {
		player setDamage 1;
	};
};

null = "M_Mo_82mm_AT_LG" createVehicle position player;