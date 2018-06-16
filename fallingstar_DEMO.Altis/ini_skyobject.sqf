// by ALIAS
// 
// Tutorial: WIP

/*

* Script MP and SP compatible
delay			- seconds, pre-set or random positive number

======= Example Usage ====================

Falling stars	
	nul = [10] execvm "ALfallstar\alias_fallingstar_ini.sqf"; - at every 10 seconds a falling star will be generated
	example with random number
	nul = [120+random 300] execvm "ALfallstar\alias_fallingstar_ini.sqf";

Meteors
	nul = [700] execvm "ALfallstar\alias_meteor_ini.sqf"; - at every 700 seconds a meteor will be generated
	example with random number
	nul = [180+random 700] execvm "ALfallstar\alias_meteor_ini.sqf;
	
*/

nul = [1] execvm "ALfallstar\alias_fallingstar_ini.sqf";
nul = [1] execvm "ALfallstar\alias_meteor_ini.sqf";