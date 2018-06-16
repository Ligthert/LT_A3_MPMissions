// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";

// Animate the route
null = execVM "scripts\route.sqf";

// Update the respawn marker
null = execVM "scripts\update_respawn.sqf";

// Music!
null = execVM "scripts\music_son.sqf";
null = execVM "scripts\music_ds.sqf";
null = execVM "scripts\music_dm.sqf";
null = execVM "scripts\music_cky.sqf";
null = execVM "scripts\music_frenchcore.sqf";
