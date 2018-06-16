_i = 0;

_mrkrs = ["tgt1","tgt2","tgt3","tgt4"];

{
	_x setMarkerAlpha 1;
} forEach _mrkrs;


["tgt1",true,["There is a mortar site located and is on stand-by around the clock. It covers the entire island and acts a kind of lazy QRF. Since this is a threat to our operation it is up to you to cleanse the mortar site.","Clear Mortarsite","Clear Mortarsite"],getMarkerPos "tgt1","CREATED",4, true, true, "", false] call bis_fnc_setTask;

["tgt2",true,["The colonel overseeing the defence of this island is in the hospital for a check-up. This means weakened security and an great chance to take him out and make our work easier.","Assassinate Colonel","Assassinate Colonel"],getMarkerPos "tgt2","CREATED",3, true, true, "", false] call bis_fnc_setTask;

["tgt3",true,["There is a huge radar that will the life of the main taskforce harder then that it should be. Destroy it","Destroy Radar","Destroy Radar"],getMarkerPos "tgt3","CREATED",2, true, true, "", false] call bis_fnc_setTask;

["tgt4",true,["From overseas there is fuel being pumped land inwards where it is stored in tanks. The weakest point in disabling the fuel depot between the pumping installation and the biggest silo. Take that on out and everything will blow on its own. Destroy it. Make sure you aren't near in case it goes down.","Destroy Intermediate fuel silo","Destroy Intermediate fuel silo"],getMarkerPos "tgt4","CREATED",1, true, true, "", false] call bis_fnc_setTask;

{
	(group _x) enableGunLights "forceon"; _x enableGunLights "forceon";
} forEach allUnits;

/*
while { _i < 10 } do {

	_pos = getMarkerPos "tgt5";
	_pos = [_pos select 0, _pos select 1, 100];
	"Flare_82mm_AMOS_White" createVehicle _pos;

	sleep 60;
	_i = _i + 1;

};
*/