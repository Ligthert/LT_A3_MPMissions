// by ALIAS
// nul = [delay] execvm "ALfallstar\alias_fallingstar_ini.sqf";
// Tutorial: WIP

if (!isServer) exitWith {};

_delay_fall_star = _this select 0;
nul = [] execVM "ALfallstar\alias_hunt.sqf";

// if you want to stop the loop comment lines bellow and set public variable using a trigger or a script
alias_fallingstar=true;
publicVariable "alias_fallingstar";

while {alias_fallingstar} do {
	nul = [] execvm "ALfallstar\alias_fallingstar.sqf";
sleep _delay_fall_star;
};