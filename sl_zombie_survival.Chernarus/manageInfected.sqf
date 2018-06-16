// Infected management private vars
private ["_cached","_range_in","_range_out","_range_diff","_range_safe","_range_random","_obj","_sleep","_player","_iCount","_spawnPos","_found","_nearPlayer","_nearInfected","_nearCachedInfected","_nearWater","_nearEmpty","_emptyArray","_maxPerPlayer","_hitPoint","_hitPoints","_hitName","_damage","_damagePoints","_change","_class","_fsm","_infected","_civie","_side","_grp"];


// Broadcast
diag_log["### Starting management of Infected ###"];


// Init of all inf in the field.

// format: _cached = [ [ [x,y], unit_class, damage, [damage array] ], [ [x,y], unit_class, damage, [damage array] ] ]
_cached = [];

// Example: alive_units = [ _obj, _obj, _obj ];
// Made redudant and is now a global far so it can be access from other scripts to add units!
// alive_units = [];

// Rang when units should spawn.
_range_in = 100;

// Range when caching should kick in.
_range_out = 1000;

// We need to diff between these two numbers for randomization!
_range_diff = _range_out - _range_in;

// The between spawning new units and units already in the battlespace
_range_safe = 1;

// Max infected per player
_maxPerPlayer = 5;

// Search Limit; needs to be modified proportional to the _maxPerPlayer. I have not ratio I can recommend.
// Was 250
_searchLimit = 25;

// http://www.youtube.com/watch?v=R5sQnfHDNRg
_sleep = 10;

// I want some array to compare arrays with
_emptyArray = [];

// Side and groups
_side = createCenter resistance;
_grp = createGroup _side;

// this is the Main loop
while {1 == 1} do {

        // Main loop to spawn units.
        {
                // Per player, count the amount of infected nearby
                // If there are less than 3, spawn some in.
                // If more, who cares! :D
                _player = _x;
                _iCount = 0;

                // We must keep track of the attempts done.
                // If this reaches _searchLimit, we can't find a spot to span and have to move on.
                _searchAttempt = 0;

                // Count the nearby infected units
                {
                        if ( getPos _x distance getPos _player <= _range_out ) then { _iCount = _iCount + 1; };
                } foreach alive_units;

                // Count the nearby cached units.
                {
                        if ( (_x select 0) distance getPos _player <= _range_out ) then { _iCount = _iCount + 1; };
                } forEach _cached;

                // We don't want it to run when the player is on the water.
                if ( surfaceIsWater (getPos _player) ) then { _iCount = 100000 };

                // Or in the air
                // Once this becomes an issue: DO IT!

                // Lets spawn some units...
                if ( _iCount < _maxPerPlayer and _searchAttempt <= _searchLimit ) then {

                        // Enter a for-loop to spawn additional units.
                        for "_x" from _iCount to _maxPerPlayer-1 do {

                                // We need to loop to find a position that isn't near a player or other infected, not in a rock etc etc so you will get a nice spread
                                _found = 0;

                                while { _found == 0 } do {

                                        // Reset some checks
                                        _nearPlayer = 0;
                                        _nearInfected = 0;
                                        _nearCachedInfected = 0;
                                        _nearWater = 0;
                                        _nearEmpty = 0; // This is kinda retarded, war is peace, freedom is slavery, ignorance is strength, 0 = 1

                                        // Get a random pos
                                        _range_random = _range_in + random _range_diff;
                                        _spawnPos = [getPos _player, _range_random, random 360] call BIS_fnc_relPos;

                                        // Check if its near another player
                                        {
                                                if ( _spawnPos distance _x <= _range_safe ) then { _nearPlayer = 1;  };
                                        } foreach playableUnits;

                                        // Check if its near another infected
                                        {
                                                if ( _spawnPos distance _x <= _range_safe ) then { _nearInfected = 1; };
                                        } foreach alive_units;

                                        // check if its near another cached infected
                                        // Isn't working *sigh*
                                        {
                                                if ( _spawnPos distance (_x select 0) <= _range_safe ) then { _nearCachedInfected = 1; };
                                        } foreach _cached;

                                        // Lets make sure the surface we are suggesting isn't the water.
                                        if ( surfaceIsWater _spawnPos ) then { _nearWater = 1; };

                                        // And we want to make sure they spawn in houses, rocks, trees and voluptuous teenage girls
                                        _emptyArray = _spawnPos isFlatEmpty [1, 0, 0.8, 1, 0, false, objNull];
                                        if ( count _emptyArray == 0 ) then {_nearEmpty = 1; };

                                        // TODO: add EZ checking (s2017_fnc_inEZ)
                                        // MAGIC HAPPENS HERE!!!

                                        // Final test wich determines if we found something.
                                        if ( _nearPlayer == 0 and _nearInfected == 0 and _nearCachedInfected == 0 and _nearWater == 0 and _nearEmpty == 0 ) then { _found = 1; };

                                        // This is the limit.
                                        _searchAttempt = _searchAttempt + 1;

                                };

                                // Only spawn stuff if a location is found.
                                if ( _found == 1 ) then {

                                        // http://www.youtube.com/watch?v=-crgQGdpZR0
                                        _change = random 100;

                                        // TODO: Strip this
                                        // TODO: From here
                                        // _civie = civilians call bis_fnc_selectRandom;
                                        _civie = "RyanZombieC_man_1medium";
                                        _obj = _grp createUnit [_civie,_spawnPos,[],0,"NONE"];
                                        // TODO: To here
                                        // Place the units in the array of alive units for tracking.
                                        alive_units set [count alive_units, _obj];
                                };

                        };
                };

                // DEBUG - 1p only
                deleteMarker "marker_in";
                _marker_in = createMarker["marker_in",getPos _x];
                _marker_in setMarkerShape "ELLIPSE";
                _marker_in setMarkerColor "ColorRed";
                _marker_in setMarkerSize [_range_in,_range_in];
                _marker_in setMarkerBrush "Border";

                deleteMarker "marker_out";
                _marker_out = createMarker["marker_out",getPos _x];
                _marker_out setMarkerShape "ELLIPSE";
                _marker_out setMarkerColor "ColorGreen";
                _marker_out setMarkerSize [_range_out,_range_out];
                _marker_out setMarkerBrush "Border";


        } foreach playableUnits;


        // Main loop for all units in the ALiVE array.
        {
                // The unit that is in the battlespace we need to cache or delete.
                _unit = _x;

        // DEBUG
        _marker_name = str _x;
        deleteMarker _marker_name;

        _marker = createMarker[_marker_name, getPos _x];
        _marker setMarkerType "mil_dot";
        _marker setMarkerColor "ColorRed";
        _marker setMarkerShape "ICON";

                // We will use this to check of the unit is near a player.
                _nearPlayer = 0;

                // Now, lets cache or delete the unit.
                // If the unit is alive,
                if (alive _unit) then {

                        {
                                if ( _unit distance _x < _range_out ) then { _nearPlayer = 1; };
                        } foreach playableUnits;

                        // No players nearby: nuke
                        if ( _nearPlayer == 0 ) then {

                                // Remove the unit that needs to be cached from the array of alive units.
                                alive_units = alive_units - [_unit];

                                // Go multi-array storing position, class, damage and limbdamage
                                _hitPoints = configFile >> "CfgVehicles" >> typeOf _unit >> "HitPoints";
                                _damagePoints = [];
                                _damage = [];

                                for "_i" from 0 to (count _hitPoints)-1 do
                                {
                                        _hitPoint = _hitPoints select _i;

                                        if(isClass _hitPoint) then
                                        {
                                                _hitName = configName _hitPoint;
                                                _damagePoints set [count _damagePoints, _hitName];
                                        };
                                };

                                {
                                        _hitDamage = _unit getHitPointDamage _x;
                                        _damage set [count _damage, [_x,_hitDamage]];
                                } forEach _damagePoints;

                                // Store all the data in an array, representing the unit
                                _unit_array = [getPosATL _unit,typeOf _unit,getDammage _unit,_damage];

                                // place the unit in the _cached array.
                                _cached set [count _cached,_unit_array];

                                // DEBUG
                                deleteMarker _marker;

                                // Delete the unit from the battlespace
                                deleteVehicle _unit;
                        };

                } else {

                        // If the unit isn't alive. Delete it from the array to avoid further tracking.
                        alive_units = alive_units - [_unit];

                        // Delete the unit from the battlespace...
                        // This should be done by description.ext
                        deleteVehicle _unit;

                };

        } forEach alive_units;


        // main loop for all the cached units to bring them back into the battlespace.
        {

                // The cached unit
                _unit = _x;

                // DEBUG
                _marker_name = str _x;
                deleteMarker _marker_name;

                _marker = createMarker[_marker_name, _unit select 0];
                _marker setMarkerType "mil_dot";
                _marker setMarkerColor "ColorGreen";
                _marker setMarkerShape "ICON";

                {
                        // If the unit is near a player, spawn it into the battlespace.
                        // was _range_in
                        if ( (_unit select 0) distance _x < _range_out ) then {

                                // TODO: createUnits
                                // spawn the unit
                                //_obj = createAgent [_unit select 1, _unit select 0, [], 0, "FORM"];
                                // _civie = civilians call bis_fnc_selectRandom;
                                _civie = "RyanZombieC_man_1medium";
                                _obj = _grp createUnit [_civie,_unit select 0,[],0,"NONE"];

                                // set attributes like damage
                                _obj setDamage (_unit select 2);

                                // Set limb damage
                                {
                                        _obj setHitPointDamage _x;
                                } forEach (_unit select 3);

                                // Delete the marker
                                deleteMarker _marker;

                                // Place the units in the array of alive units for tracking.
                                alive_units set [count alive_units, _obj];

                                // Remove the units from the caching to stop tracking.
                                _cached = _cached - [_unit];

                        };
                } forEach playableUnits;

        } forEach _cached;

        // DEBUG - DELETE BEFORE TAKING INTO PRODUCTION!
        // hintSilent format["%1 + %2 = %3",count alive_units, count _cached, count alive_units + count _cached];
        diag_log format["%4 caching ALiVE: %1; Cached: %2; Total: %3;",count alive_units, count _cached, count alive_units + count _cached, time];

        // Wait a few seconds before we kill the server FPS.
        sleep _sleep;

};