// by ALIAS
// nul = [delay] execvm "ALfallstar\alias_fallingstar.sqf";
// Tutorial: WIP

	// creeaza obiect pe server
	_dire	= [500,-500] call BIS_fnc_selectRandom;	
	_xx = (getpos hunt_alias select 0)+random _dire;
	_dire	= [500,-500] call BIS_fnc_selectRandom;	
	_yy = (getpos hunt_alias select 1)+random _dire;
	_poz_ini = [_xx, _yy, 800];
		
	_falling_star_main = "Land_Battery_F" createVehicle _poz_ini;
	_falling_star_main setPosATL _poz_ini;
	
	// stabileste destinatie random
	_dire_dest	= [1,-1] call BIS_fnc_selectRandom;	
	_xx_dest 	= _xx+(random 40000*_dire_dest);
	_dire_dest	= [1,-1] call BIS_fnc_selectRandom;
	_yy_dest 	= _yy+(random 40000*_dire_dest);
	
	// creeaza lumina variabila
	//[[[_falling_star_main],"ALfallstar\star_lumina.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
	[[_falling_star_main],"ALfallstar\star_lumina.sqf"] remoteExec ["BIS_fnc_execVM"];
	
	// creeaza smoke pe client
	//[[[_falling_star_main],"ALfallstar\alias_stareffect.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
	[[_falling_star_main],"ALfallstar\alias_stareffect.sqf"] remoteExec ["BIS_fnc_execVM"];
	
	// deplaseaza obiect
	_falling_star_main setvelocity [_xx_dest/100,_yy_dest/100,-1];

	// sterge obiect si lumina dupa un anumit timp
	sleep 4+random 2;
	deleteVehicle _falling_star_main;

