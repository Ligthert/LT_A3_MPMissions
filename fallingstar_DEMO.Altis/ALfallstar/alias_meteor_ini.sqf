// by ALIAS
// nul = [delay] execvm "ALfallstar\alias_meteor_ini.sqf";
// Tutorial: WIP

if (!isServer) exitWith {};

_delay = _this select 0;
nul = [] execVM "ALfallstar\alias_hunt.sqf";

// if you want to stop the loop comment lines bellow and set public variable using a trigger or a script
alias_meteors = true;
publicVariable "alias_meteors";

while {alias_meteors} do {
nul = [] execvm "ALfallstar\alias_meteor.sqf";
sleep _delay;
};