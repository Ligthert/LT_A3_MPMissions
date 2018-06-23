// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";

waitUntil {!isnil "bis_fnc_init"};
waitUntil {!isNil "lt_param_timer"};
waitUntil {lt_param_timer >= 0};

// Start serversided stuff in scheduled space
if (isServer) then { null = execVM "action_server.sqf"; };
