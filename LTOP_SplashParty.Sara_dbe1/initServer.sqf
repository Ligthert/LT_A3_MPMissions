// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";
// ["cleanup",3] execVM "flares.sqf";
// [200,5,0] execVM "trashRoads.sqf";
[] spawn {while {true} do {{(group _x) setBehaviour "COMBAT";} forEach allUnits;sleep 180;};};
[] spawn { while {true} do {"respawn_west" setMarkerPos (getPos transport); "respawn_west" setMarkerDir (getDir transport); sleep 5; };};
