// bunny = group player createUnit [""Rabbit_F"", Position player, [], 0, ""FORM""]; bunny setVelocity [40, 0, 0]

private ["_sideHQ","_grp","_bunny","_wp"];

//hint "werkt";

_sideHQ = createCenter west;
_grp = createGroup west;

 _bunny = _grp createUnit ["Rabbit_F", getMarkerPos "spawn", [], 0, "NONE"];
_bunny setVelocity [30, 0, 0];
_bunny enableCollisionWith player;

null = [_bunny] execVM "armBunny.sqf";

while {alive _bunny} do {
	_wp = _grp addWaypoint [position player, 0];
	sleep 5;
}