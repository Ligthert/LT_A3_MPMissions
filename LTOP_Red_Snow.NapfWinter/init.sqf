// Compulsary missions start banner
diag_log ".____                 .__                     .___      ";
diag_log "|    |    ______  _  _|  | _____    ____    __| _/______";
diag_log "|    |   /  _ \ \/ \/ /  | \__  \  /    \  / __ |/  ___/";
diag_log "|    |__(  <_> )     /|  |__/ __ \|   |  \/ /_/ |\___ \ ";
diag_log "|_______ \____/ \/\_/ |____(____  /___|  /\____ /____  >";
diag_log "        \/                      \/     \/      \/    \/ ";
diag_log "___________              __  .__              .__       ";
diag_log "\__    ___/____    _____/  |_|__| ____ _____  |  |      ";
diag_log "  |    |  \__  \ _/ ___\   __\  |/ ___\\__  \ |  |      ";
diag_log "  |    |   / __ \\  \___|  | |  \  \___ / __ \|  |__    ";
diag_log "  |____|  (____  /\___  >__| |__|\___  >____  /____/    ";
diag_log "               \/     \/             \/     \/          ";

// TFR settings
#include "\lt_template_base\TFR\settings.sqf"

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// Set Camo, Gear and TFR. And in this order!
#include "\lt_template_base\gear\setCamo.sqf"
#include "\lt_template_base\gear\setGear.sqf"
#include "\lt_template_base\gear\setTFR.sqf"

// Briefing file.
null = execVM "briefing.sqf";

// Do not edit unless you know what you are doing or specified otherwise.

// Settings common to all scenarios. (Also loaded in onPlayerRespawn.sqf)
#include "\lt_template_base\init\common.sqf"

// Place Mission Specific commands in this file.
#include "init-custom.sqf"

FOGLEVEL = 0.65;

null = execVM "figfox.sqf";
// [] exec "fog.sqs"

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
