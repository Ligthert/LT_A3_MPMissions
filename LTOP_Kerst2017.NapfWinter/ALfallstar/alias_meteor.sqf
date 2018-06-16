// by ALIAS
// nul = [] execvm "ALfallstar\alias_meteor.sqf";
// Tutorial: WIP
//_delay_meteor = _this select 0;


	// creeaza obiect
	_dire	= [1000,-1000] call BIS_fnc_selectRandom;	
	_xx = (getpos hunt_alias select 0)+random _dire;
	_dire	= [1000,-1000] call BIS_fnc_selectRandom;	
	_yy = (getpos hunt_alias select 1)+random _dire;
	_poz_ini = [_xx, _yy, 800];
		
	_falling_meteor_main = "Land_Battery_F" createVehicle _poz_ini;
	_falling_meteor_main setPosATL _poz_ini;
	
	// lumina
	//[[[_falling_meteor_main],"ALfallstar\meteor_ini_blast.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
	[[_falling_meteor_main],"ALfallstar\meteor_ini_blast.sqf"] remoteExec ["BIS_fnc_execVM"];
	
	// sunet bariera sonica
	_bariera_sunet = ["bariera_1","bariera_2","bariera_3","bariera_4", "bariera_5"] call BIS_fnc_selectRandom;	
	//[[_falling_meteor_main, _bariera_sunet], "say3d", true] call BIS_fnc_MP;
	[_falling_meteor_main,[_bariera_sunet,4000]] remoteExec ["say3d"];
	// stabileste destinatie random
	_dire_dest	= [1000,-1000] call BIS_fnc_selectRandom;	
	_xx_dest 	= _xx+random _dire_dest;
	_dire_dest	= [1,-1] call BIS_fnc_selectRandom;
	_yy_dest 	= _yy+random _dire_dest;
	
	// creeaza smoke pe client
	//[[[_falling_meteor_main],"ALfallstar\alias_meteoreffect.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
	[[_falling_meteor_main],"ALfallstar\alias_meteoreffect.sqf"] remoteExec ["BIS_fnc_execVM"];
	
	// deplaseaza obiect
	_falling_meteor_main setvelocity [_xx_dest/200,_yy_dest/200,-100];
	
	while {((getpos _falling_meteor_main) select 2) >10} do	{
		//[[_falling_meteor_main, "meteor_1"], "say3d", true] call BIS_fnc_MP;
		[_falling_meteor_main,["meteor_1",2000]] remoteExec ["say3d"];
		sleep 0.9;
	};

	_poz_end = getPos _falling_meteor_main;
	deleteVehicle _falling_meteor_main;
	
// change the blast radius replacing 50 with desired value in the line below
	_nearobjects = nearestObjects[_poz_end,[],50];
	{if((_x isKindOf "LandVehicle") or (_x isKindOf "Man") or (_x isKindOf "Air")) then {_x setvelocity [random 3,random 3,random 30];_x setdamage 1;} else {_x setdamage 1};} foreach _nearobjects;
	
	// genereaza explozia si effect explozie	
	//[[[_poz_end],"ALfallstar\meteor_end_blast.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
	[[_poz_end],"ALfallstar\meteor_end_blast.sqf"] remoteExec ["BIS_fnc_execVM"];
	
	_meteor_voice = "land_helipadempty_f" createVehicle _poz_end;
	//[[_meteor_voice, "expozie"], "say3d", true] call BIS_fnc_MP;
	[_meteor_voice,["expozie",3000]] remoteExec ["say3d"];
	enableCamShake true;
	addCamShake [3, 5, 35];
	sleep 1+random 1;
	addCamShake [0.5, 30, 35];
	
//	sterge obiect si lumina dupa un anumit timp
	sleep 5;
	enableCamShake false;
	deleteVehicle _meteor_voice;
