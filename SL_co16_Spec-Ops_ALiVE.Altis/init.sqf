// init.sqf by Sacha Ligthert

// Global functions
#include "scripts\functions.sqf";

// Include mission templates
#include "templates\init.sqf";

// Some global stuff

// Prevent embarrasing saving.
// Enabling this will fuck-up ALiVE.
// enableSaving [false,false];

// Lets stick to shortwave radio
tf_no_auto_long_range_radio = true;

// We will be doing a lot of running. So fuck fatique
player enableFatigue false;

if (!isDedicated) then {
	null = null execVM "briefing.sqf";
};

// Server-only scripts;
if (isServer) then {

	// Lets establish some default params;
	objectives = [];
	// redMenArray = ["O_Soldier_A_F","O_soldier_AR_F","O_medic_F","O_engineer_F","O_soldier_exp_F","O_Soldier_GL_F","O_soldier_M_F","O_soldier_AA_F","O_soldier_AT_F","O_officer_F","O_soldier_repair_F","O_Soldier_F","O_soldier_LAT_F","O_Soldier_lite_F","O_Soldier_SL_F","O_Soldier_TL_F"];
	// greenMenArray = ["I_Soldier_A_F","I_soldier_AR_F","I_medic_F","I_engineer_F","I_soldier_exp_F","I_Soldier_GL_F","I_soldier_M_F","I_soldier_AA_F","I_soldier_AT_F","I_officer_F","I_soldier_repair_F","I_Soldier_F","I_soldier_LAT_F","I_Soldier_lite_F","I_Soldier_SL_F","I_Soldier_TL_F"];

	// Parse parameters

	// Set start-time
	env_startTime = paramsArray select 0;
	setDate[2013,3,25,env_startTime,0];
	// Make a function for this and tell this to the clients.

	// Like Whatever!
	tasks_total = paramsArray select 1;

	//// Objectives

	// Assasinations
	if (paramsArray select 2 == 1) then {
		objectives set [(count objectives),"objectives\task_assassinate.sqf"];
	};

	// Destruction
	if (paramsArray select 3 == 1) then {
		objectives set [(count objectives),"objectives\task_destroy.sqf"];
	};

	// Being the fucktard bushwookie you are! :p
	if (paramsArray select 4 == 1) then {
		objectives set [(count objectives),"objectives\task_snipe.sqf"];
	};

	// Extract data from stuff

	// Secure small compounds or settings
	if (paramsArray select 6 == 1) then {
		objectives set [(count objectives),"objectives\task_secure.sqf"];
	};

};

// Player-only scripts;
execVM "scripts\player_createTrigger.sqf";

// Fuck the hyperspawning rabbits.
// Spamming the RPT
waitUntil {time > 0};
enableEnvironment false;