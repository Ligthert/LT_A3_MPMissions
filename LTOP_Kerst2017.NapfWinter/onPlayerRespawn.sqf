// Executed locally when player respawns in a multiplayer mission. This event script will also fire at the beginning of a mission if respawnOnStart is 0 or 1, oldUnit will be objNull in this instance. This script will not fire at mission start if respawnOnStart equals -1.

// Settings common to all scenarios
null = execVM "\lt_template_base\init\common.sqf";

// Respawn specific script.
null = execVM "\lt_template_base\init\onPlayerRespawn.sqf";

player setUnitRecoilCoefficient 0;
player enableAimPrecision false;

if (gamestate=="alamo") then {
  player setPos (getMarkerPos "safespawn");
  ["Initialize", [player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
  [player, true] call TFAR_fnc_forceSpectator;
  cutText ["Je bent verplaatst om niet de AI te beinvloeden (en ik kan niet programmeren). Open de kaart (druk op m) en klik aggressief op de kaart om de camera te verplaatsen (of klik op iemands naam links in het menu die nog niet dood is gegaan).","PLAIN"];
};
