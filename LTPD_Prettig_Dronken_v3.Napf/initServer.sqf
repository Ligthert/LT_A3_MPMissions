// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";

[west, 25 * (count allPlayers), [["Land_BagFence_01_Long_green_F", 5], ["Land_BagBunker_01_Small_green_F", 15], ["Land_BagBunker_01_large_green_F",30], ["CUP_B_ZU23_CDF",60] ]] call acex_fortify_fnc_registerObjects;
missionNamespace setVariable ["acex_fortify_fortifyAllowed", true, true];
