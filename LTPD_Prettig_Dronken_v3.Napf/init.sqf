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

// Briefing file.
null = execVM "briefing.sqf";

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && player != player) then { waitUntil {player == player && time > 0.3}; } else { waitUntil {time > 0.3}; };

// Set Camo, Gear and TFR. And in this order!
#include "\lt_template_base\gear\setCamo.sqf"
#include "\lt_template_base\gear\setGear.sqf"
#include "\lt_template_base\gear\setTFR.sqf"

// Do not edit unless you know what you are doing or specified otherwise.

// Settings common to all scenarios. (Also loaded in onPlayerRespawn.sqf)
#include "\lt_template_base\init\common.sqf"

// Place Mission Specific commands in this file.
#include "init-custom.sqf"

player addItemToVest "ACE_Fortify";

if (isServer) then {
  [west, 25 * (count allPlayers), [["Land_BagFence_01_Long_green_F", 5], ["Land_BagBunker_01_Small_green_F", 15], ["Land_BagBunker_01_large_green_F",30], ["CUP_B_ZU23_CDF",60] ]] call acex_fortify_fnc_registerObjects;
  missionNamespace setVariable ["acex_fortify_fortifyAllowed", true, true];
  heli1 setFuel 0;
  heli2 setFuel 0;
};
