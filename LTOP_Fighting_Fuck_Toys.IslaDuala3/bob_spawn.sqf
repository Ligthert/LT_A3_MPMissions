private ['_pos','_this','_near'];

// Define what we want where..
_pos = _this select 0;

// Make sure its not near players
_near = false;
{ if ((_pos distance2d _x) <= 400) then { _near = true; }; } forEach allPlayers;
if (_near) exitWith {hint "Near players. Not possible."};

// Spawn the unit and move into it
bob = (group player) createUnit ["O_CUPAFRReb_Rifleman_AT_01", _pos, [], 0, "CAN_COLLIDE"];
selectPlayer bob;

// Add the option to kill yourself.
player addAction["KILL YOURSELF",{execVM "bob_kill.sqf"}];
showMap false;

// Reset the counter
lt_remcomUnit = 900;

// Wait till the player is unconscious before killing the player.
waitUntil {bob getVariable ["ACE_isUnconscious", true]};
execVM "bob_kill.sqf";
