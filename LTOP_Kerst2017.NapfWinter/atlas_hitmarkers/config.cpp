////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.52
//'now' is Sat Apr 02 04:03:37 2016 : 'file' last modified on Sat Apr 02 04:03:37 2016
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class atlas_hitmarkers : config.bin{
class CfgPatches
{
	class atlas_hitmarkers
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.56;
		requiredAddons[] = {};
		version = "1.0.0.0";
		versionStr = "1.0.0.0";
		versionAr[] = {1,0,0,0};
	};
};
class Extended_PreStart_EventHandlers
{
	class atlas_hitmarkers
	{
		init = "call compile preProcessFileLineNumbers '\atlas_hitmarkers\XEH_preStart.sqf'";
	};
};
class Extended_PreInit_EventHandlers
{
	class atlas_hitmarkers
	{
		init = "call compile preProcessFileLineNumbers '\atlas_hitmarkers\XEH_preInit.sqf'";
	};
};
class Extended_PostInit_EventHandlers
{
	class atlas_hitmarkers
	{
		init = "call compile preProcessFileLineNumbers '\atlas_hitmarkers\XEH_postInit.sqf'";
	};
};
class Extended_HitPart_EventHandlers
{
	class CAManBase
	{
		class atlas_hitmarkers
		{
			hitPart = "_this spawn atlas_hitmarkers_fnc_onHit";
		};
	};
};
/*
class Extended_Killed_EventHandlers {
	
		class CAManBase
	{
		class atlas_killmarkers
		{
			killed = "_this spawn atlas_hitmarkers_fnc_onkill";
		};
	};
};
*/
class RscTitles
{
	class atlas_Hitmarker
	{
		idd = -1;
		movingEnable = 0;
		enableSimulation = 1;
		fadein = 0;
		fadeout = 0.2;
		duration = 0.2;
		controlsBackground[] = {"CtrlHitmarker"};
		controls[] = {};
		class CtrlHitmarker
		{
			idc = -1;
			type = 0;
			style = 2096;
			x = "safeZoneX + safeZoneW / 2 - 0.04";
			y = "safeZoneY + safeZoneH / 2 - 0.04";
			h = 0.08;
			w = 0.08;
			font = "RobotoCondensed";
			sizeEx = 0;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			text = "\a3\ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
		};
	};
	    class atlas_killmarker
		{
		idd = -1;
		movingEnable = 0;
		enableSimulation = 1;
		fadein = 0;
		fadeout = 0.2;
		duration = 0.2;
		controlsBackground[] = {"CtrlHitmarker"};
		controls[] = {};
		class CtrlHitmarker
		{
			idc = -1;
			type = 0;
			style = 2096;
			x = "safeZoneX + safeZoneW / 2 - 0.04";
			y = "safeZoneY + safeZoneH / 2 - 0.04";
			h = 0.08;
			w = 0.08;
			font = "RobotoCondensed";
			sizeEx = 0;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,0,0,1};
			text = "\a3\ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
		};
	};
};
//};
