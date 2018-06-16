private ["_mapSize","_mapCenter"];

// faction: IND_G_F
faction_units = ["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F"];
faction_officers = ["I_G_officer_F"];
faction_ammo = ["Box_FIA_Ammo_F","Box_FIA_Wps_F","Box_FIA_Support_F"];
faction_aa = ["I_static_AA_F"];
faction_at = ["I_static_AT_F"];
faction_mortar = ["I_G_Mortar_01_F"];
faction_car = ["I_G_Offroad_01_armed_F"];
faction_ifv = ["I_APC_Wheeled_03_cannon_F"];
faction_side = independent;

_mapSize = getNumber (configfile >> "CfgWorlds" >> worldName >> "mapSize");
_mapCenter = [_mapSize/2,_mapSize/2];

SL_fnc_randomCity = {

	private ["_found","_cityTypes","_rndPos","_randomLoc","_cityName","_cityPos","_citySize","_cityType"];

	_cityTypes = ["NameVillage","NameCity","NameCityCapital"];

	_rndPos = ["ao",true] call CBA_fnc_randPosArea;
	_randomLocs = nearestLocations [ _rndPos,_cityTypes,_mapSize];

	_found = 0;

	{
	  if ( (type _x) in _cityTypes AND _found == 0 ) then {
			_cityName = name _x;
			_cityPos = locationPosition _x;
			_citySize = size _x;
			_cityType = type _x;
			_found = 1;
		};
	} forEach _randomLocs;

	[_cityName, _cityPos, _citySize, _cityType];

};

private ["_city","_marker"];

_city = call SL_fnc_randomCity;

// player sideChat format["%1",_city];
// player setPos (_city select 1);
// "populateCity.sqf" remoteExec ["execVM", 2];

_nameCity = format["city%1",random[1,500,999]];
_nameCityArea = format["cityArea%1",random[1,500,999]];
_nameCityAreaBorder = format["cityAreaBorder%1",random[1,500,999]];

_marker_city = createMarker [_nameCity,(_city select 1)];
_marker_city setMarkerShape "ELLIPSE";
_marker_city setMarkerSize [750,750];
_marker_city setMarkerColor "colorOPFOR";
_marker_city setMarkerBrush "DiagGrid";
_marker_city setMarkerAlpha 0.5;

_marker_border = createMarker [_nameCityAreaBorder,(_city select 1)];
_marker_border setMarkerShape "ELLIPSE";
_marker_border setMarkerColor "colorOPFOR";
_marker_border setMarkerSize [750,750];
_marker_border setMarkerBrush "DiagGrid";
_marker_border setMarkerAlpha 0.2;

// Location - (_city select 1)
// _nameCity

/*
_grp = [faction_side,random [4,6,8],(_city select 1),faction_units] call SL_fnc_createGroup;
nul = [(leader _grp),_nameCity,"NOFOLLOW","RANDOMA","NOWP3","NOSMOKE"] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";

_grp = [faction_side,random [4,6,8],(_city select 1),faction_units] call SL_fnc_createGroup;
nul = [(leader _grp),_nameCity,"SAFE","LIMITED","NOFOLLOW","ONROAD","NOSMOKE"] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";

nul = (faction_car select 0) createVehicle ([(_city select 1),100,(random 360)] call BIS_fnc_relPos);

_marker_area = createMarker [_nameCityArea,(_city select 1)];
_marker_area setMarkerShape "ELLIPSE";
_marker_area setMarkerColor "ColorRed";
_marker_area setMarkerSize [((_city select 2) select 0 ) + (100 * ceil ((count allPlayers)/4)),((_city select 2) select 1 ) + (100 * ceil ((count allPlayers)/4))];
_marker_area setMarkerBrush "DiagGrid";
_marker_area setMarkerAlpha 0.5;

_marker_border = createMarker [_nameCityAreaBorder,(_city select 1)];
_marker_border setMarkerShape "ELLIPSE";
_marker_border setMarkerColor "colorOPFOR";
_marker_border setMarkerSize [((_city select 2) select 0 ) + (100 * ceil ((count allPlayers)/4)),((_city select 2) select 1 ) + (100 * ceil ((count allPlayers)/4))];
_marker_border setMarkerBrush "DiagGrid";
_marker_border setMarkerAlpha 0.2;

{
	_grp = [faction_side,random [2,4,5],(_city select 1),faction_units] call SL_fnc_createGroup;
	nul = [(leader _grp),_nameCityArea,"SAFE","LIMITED","RANDOM","NOSMOKE"] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
} forEach allPlayers;
*/

null = [_marker_city,"CUP_I_NAPA",250,((count allPlayers)*3),6,2,2,0,0,0,50,50] call lt_fnc_autozone;
