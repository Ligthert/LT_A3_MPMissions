// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";

null = [getPos checkpoint1,"checkpoint1",["wp11","wp12","wp13"],(configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_Patrol"),45] execVM "startRush.sqf";
