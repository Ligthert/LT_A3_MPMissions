// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";
execVM "updateRespawn.sqf";
[cia1, true, 99000, true] call ace_medical_fnc_setUnconscious;
