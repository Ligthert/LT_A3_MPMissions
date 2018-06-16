// Example [this, getPos this, 10, 200, 25] execVM "taskPatrol.sqf";

if (!isServer) exitWith{};

// Unit that should patrol
_unit     = _this select 0;

// Starting location
_start    = _this select 1;

// Minimum range
_minr    = _this select 2;

// Maximum range
_maxr    = _this select 3;

// Amount of waypoints
_amount = _this select 4;

_grp = group _unit;

_i = 1;

while { _i < _amount} do {

    // _distance = random _range;

    _diff = _maxr - _minr;
    _range = random _diff;
    _distance = _minr + _range;

    _wdir = random 360;
    _wdir = _wdir + ( 90 * _i );
    _wx = (_start select 0) + (_distance * (sin _wdir));
    _wy = (_start select 1) + (_distance * (cos _wdir));
    _wp = _grp addWaypoint [ [_wx,_wy] , 10, _i ];

    if ( _i == 1 ) then {
        [_grp, _i] setWaypointBehaviour "SAFE";
        [_grp, _i] setWaypointCombatMode "RED";
        [_grp, _i] setWaypointFormation "COLUMN";
        wp_one = [ _wx, _wy ];
    };

//    _string = format["Waypoint %1",_i];
//    _marker = createMarker [ _string, [_wx,_wy] ];
//    _string setMarkerColor "ColorBlue";
//    _string setMarkerType "mil_dot";
//    _string setMarkerText _string;

    _i = _i + 1;

};

_wp = _grp addWaypoint [ wp_one, 10, _amount ];
[_grp, _amount] setWaypointType "CYCLE";