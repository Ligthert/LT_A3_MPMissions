// Example [this, _newpos, 100, 150, 36, 0] execVM "taskPatrol.sqf";

if (!isServer) exitWith{};

private ["_unit","_start","_minr","_maxr","_amount","_rotate","_grp","_i","_rnd","_angle","_diff","_distance","_wdir","_wx","_wy","_wp","_string","_marker"];

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

// Degrees of shift for the first waypoint
_rotate = _this select 5;


// Our group is a group.
_grp = group _unit;

// Counter
_i = 0;
_rnd = random 999;

// The difference in degrees we need to make
_angle = 360/_amount;

while { _i < _amount} do {

    // _distance = random _range;

    _diff = _maxr - _minr;
    _range = random _diff;
    _distance = _minr + _range;

    _wdir = _rotate + ( _angle * _i );
    _wx = (_start select 0) + (_distance * (sin _wdir));
    _wy = (_start select 1) + (_distance * (cos _wdir));
    _wp = _grp addWaypoint [ [_wx,_wy] , 10, _i ];

    if ( _i == 1 ) then {
        [_grp, _i] setWaypointBehaviour "SAFE";
        [_grp, _i] setWaypointCombatMode "RED";
        [_grp, _i] setWaypointFormation "COLUMN";
        [_grp, _i] setWaypointSpeed "LIMITED";
        wp_one = [ _wx, _wy ];
    };

    _i = _i + 1;

};

_wp = _grp addWaypoint [ wp_one, 10, _amount ];
[_grp, _amount] setWaypointType "CYCLE";