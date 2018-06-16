/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: common_defines.sqf

Author:

	Hazey

Last modified:

	2/11/2015

Description:

	A safe place to put all the common defines you could ever want!

______________________________________________________*/

// ====================================================================================
	//--- DEFINES

	//--- Debug - True = Enabled... Duh!
	ins_debug = false;

	//--- Advanced Roles Defines.
	INS_ENGINEERS = ["NLD_WLD_ENGI","NLD_WLD_EXPL"];
	INS_MEDICS = ["NLD_WLD_CLS"];
	INS_UAV = ["NLD_WLD_UAV"];
	INS_MARKSMAN = ["NLD_WLD_Sniper","NLD_WLD_SLA"];
	INS_AUTORIFLE = ["NLD_WLD_AR","NLD_WLD_MMG"];

	//--- Public Score Define.
	INS_west_score = 0;
	publicVariable "INS_west_score";

	if (isServer || isDedicated) then {
		//--- Start CACHE as a null object to avoid any init issues.
		CACHE = objNull;
	};

	//--- Define intel types
	INS_INTELDROPPED = ["Land_HandyCam_F","Land_SatellitePhone_F","Land_Suitcase_F","Land_Ground_sheet_folded_OPFOR_F"];
	INS_INTELSPAWNED = ["Box_East_Support_F","Land_Laptop_unfolded_F","Land_Sleeping_bag_folded_F","Land_Sleeping_bag_blue_F"];
	INS_CTPLOCATIONS = ["Land_Church_01_V1_F"];

	//--- MHQ Defines
	INS_MHQ_CAMONET = "CamoNet_BLUFOR_big_F";
	INS_MHQ_SUPPLYCRATE = "B_supplyCrate_F";
	INS_MHQ_FLAGCLASS = "Flag_US_F";

// ====================================================================================