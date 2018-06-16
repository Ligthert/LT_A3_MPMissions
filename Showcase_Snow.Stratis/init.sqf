// Comment in/out what you like!

// Less Colours
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [0.9, 0.9, 1, 0.4],  [0.199, 0.587, 0.114, 0.0]];  
"colorCorrections" ppEffectCommit 0;  
"colorCorrections" ppEffectEnable true;
// Light Film Grain
"filmGrain" ppEffectEnable true; 
"filmGrain" ppEffectAdjust [0.03, 1, 1, 0.1, 1, false];
"filmGrain" ppEffectCommit 0;

/* Brighter / Blue
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1,1,0,[0,0,0,0],[2,0,0,1.25],[2.5,-2.5,0,0]];
"colorCorrections" ppEffectCommit 0;
*/

// Snow Effects
//[] call IP_fnc_snowFall;
[] call IP_fnc_snowStorm;

// Ground Effects
//[] call IP_fnc_groundFog;
[] call IP_fnc_groundStorm;

// Cold breath for all units.
{
	[_x] call IP_fnc_coldBreath;
} forEach allUnits;

// Fuck those butterflies!
[] spawn {
	enableEnvironment false;
};