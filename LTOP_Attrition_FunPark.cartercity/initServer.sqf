// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";
null = execVM "updateRespawn.sqf";

null = ["spawns1","center1","spawnn1"] execVM "scripts\createConflict.sqf";
null = ["spawns2","center2","spawnn2"] execVM "scripts\createConflict.sqf";
null = ["spawns3","center3","spawnn3"] execVM "scripts\createConflict.sqf";
null = execVM "scripts\murderZone.sqf";
null = execVM "scripts\shellPlayers.sqf";

playersNear = 0;
null = execVM "scripts\spamPatrols.sqf";
[] spawn { while {true} do {{(group _x) setBehaviour "COMBAT";} forEach allUnits; sleep 180; }; };
