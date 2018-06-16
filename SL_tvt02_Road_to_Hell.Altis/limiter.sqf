	private ["_dir","_pos","_center_pos"];

	if (side player == west) then { _center_pos = getPos nato_bunker;};
	if (side player == east) then { _center_pos = getPos csat_bunker;};

while { true } do {

	waitUntil { player distance _center_pos > 20 };

	_dir = [getPos player, _center_pos] call BIS_fnc_dirTo;
	_pos = [_center_pos, 19, _dir+180] call BIS_fnc_relPos;
	vehicle player setPos _pos;
	vehicle player setDir _dir;

	cutText["Don't wonder to far from your bunker!","PLAIN"];

};