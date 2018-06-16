diag_log "+++++ Starting Zombie Survival +++++";

// Turn on R3F logistics
execVM "R3F_LOG\init.sqf";

// Fix the fox
if ( paramsArray select 16 == 0 ) then { 5 setFog [0.5,0,10]; };
if ( paramsArray select 16 == 1 ) then { 5 setFog [0.6,0,10]; };
if ( paramsArray select 16 == 2 ) then { 5 setFog [0.7,0,10]; };
if ( paramsArray select 16 == 3 ) then { 5 setFog [1,0,10]; };