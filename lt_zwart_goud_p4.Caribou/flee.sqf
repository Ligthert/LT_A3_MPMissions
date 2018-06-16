if (!isServer) exitWith {};

private ["_grp","_wpcount","_wps","_counter"];

// Define variables

_grp = group hvt;
_wps = ["wp1","wp2","wp3","wp4"];
_counter = 0;

// Send the units into the vehicle
{
	_x assignAsCargo uaz_car;
} forEach units _grp;

hvt assignAsDriver uaz_car;

(units _grp) orderGetIn true;


// Delete all wallpapers

while {(count (waypoints _grp)) > 1} do {
	deleteWaypoint ((waypoints _grp) select 1);
	sleep 0.01;
};

// Give them new waypoints

{
	_grp addWaypoint [getMarkerPos _x, _counter];
	[_grp,_counter] setWaypointSpeed "FULL";
	_counter = _counter + 1;
} forEach _wps;