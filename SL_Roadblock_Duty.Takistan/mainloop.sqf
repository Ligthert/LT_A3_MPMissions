private ["_vehicles_civs","_vehicles_ins_weapons","_vehicles_ins_truck","_insurgents","_civilians","_veh_of_choice","_weapons","_magazines","_numberOfCrewUnits","_numberofCargoUnits","_grp","_veh","_units","_chance","_action","_bodyCount","_wait","_round","_ieds","_bomb"];

_vehicles_civs = ["C_Offroad_01_F","C_Offroad_01_repair_F","C_Offroad_01_red_F","C_Offroad_01_sand_F","C_Offroad_01_white_F","C_Offroad_01_blue_F","C_Offroad_01_darkred_F","C_Offroad_01_bluecustom_F","C_Offroad_luxe_F","C_Offroad_default_F","C_Offroad_stripped_F","C_Hatchback_01_F","C_Hatchback_01_grey_F","C_Hatchback_01_green_F","C_Hatchback_01_blue_F","C_Hatchback_01_bluecustom_F","C_Hatchback_01_beigecustom_F","C_Hatchback_01_yellow_F","C_Hatchback_01_white_F","C_Hatchback_01_black_F","C_Hatchback_01_dark_F","C_SUV_01_F","SUV_01_base_red_F","SUV_01_base_black_F","SUV_01_base_grey_F","SUV_01_base_orange_F","C_Van_01_transport_F","C_Van_01_box_F"];
_vehicles_ins_weapons = ["O_G_Offroad_01_F","O_G_Offroad_01_armed_F","O_Truck_02_transport_F","O_G_Van_01_transport_F"];
_vehicles_ins_truck = ["O_Truck_02_covered_F","O_Truck_02_transport_F"];

_insurgents = ["O_G_engineer_F","O_G_medic_F","O_G_officer_F","O_G_Sharpshooter_F","O_G_Soldier_A_F","O_G_Soldier_AR_F","O_G_Soldier_exp_F","O_G_Soldier_F","O_G_soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_lite_f","O_G_Soldier_M_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"];
_civilians = ["C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_fugitive_F","C_man_p_beggar_F","C_man_p_shorts_1_F","C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_journalist_F"];

_weapons = ["arifle_TRG21_F","hgun_ACPC2_F","arifle_Mk20_MRCO_F","arifle_TRG21_GL_F","LMG_Mk200_BI_F","arifle_Mk20_F","arifle_TRG21_GL_F","arifle_Mk20_MRCO_F","launch_RPG32_F"];
_magazines = ["30Rnd_556x45_Stanag","RPG32_F","HandGrenade","9Rnd_45ACP_Mag","SmokeShell"];
_ieds = ["SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag","IEDUrbanBig_Remote_Mag","IEDLandBig_Remote_Mag","IEDUrbanSmall_Remote_Mag","IEDLandSmall_Remote_Mag"];

// The main loop
_round = 1;

while { _round != rounds } do {

	_chance = 0;
	_rnd_action = 0;

	_chance = ceil random 4;

	if ( _chance != 4 ) then {
		_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
		_veh = _veh_of_choice createVehicle (getMarkerPos "start");
		_numberofCargoUnits = _veh emptyPositions "cargo";
		_bodyCount = ceil random _numberofCargoUnits;
		_units = [_civilians,_bodyCount] call sl_fnc_compileGroup;
		_grp = [getPos _veh, civilian,_units] call BIS_fnc_spawnGroup;
		_grp addVehicle _veh;
		{ [_x] orderGetIn true; } forEach units _grp;
		null = [_grp,"MOVE"] call sl_fnc_createWaypoints;
	};

	if ( _chance == 4 ) then {

		_rnd_action =  ceil random 4;

		if ( _rnd_action == 1 ) then {
			_action = ["RACE","UNLOAD"];
			_veh_of_choice = _vehicles_ins_truck call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberOfCargoUnits = _veh emptyPositions "cargo";
			_units = [_insurgents,_numberOfCargoUnits] call sl_fnc_compileGroup;
		};

		if ( _rnd_action == 2 ) then {
			_action = ["ATTACK","RACE"];
			_veh_of_choice = _vehicles_ins_weapons call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberOfCrewUnits = count ( [ _veh, grpnull, true, typeof _veh ] call BIS_fnc_spawnCrew );
			_units = [_insurgents,_numberOfCrewUnits] call sl_fnc_compileGroup;
		};

		if ( _rnd_action == 3 ) then {
			_action = ["MOVE"];
			_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberofCargoUnits = _veh emptyPositions "cargo";
			_units = [_civilians,_numberofCargoUnits] call sl_fnc_compileGroup;

			{ _veh addWeaponCargoGlobal [_x, (ceil random 5)] } forEach ( [_weapons,(ceil random 5)] call sl_fnc_compileGroup );
			{ _veh addMagazineCargoGlobal [_x, (ceil random 5)] } forEach ( [_magazines,(ceil random 5)] call sl_fnc_compileGroup );

		};

		if ( _rnd_action == 4 ) then {
			_action = ["RACE"];
			_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberofCargoUnits = _veh emptyPositions "cargo";
			_units = [_civilians,_numberofCargoUnits] call sl_fnc_compileGroup;

			_veh allowCrewInImmobile true;
			_bomb = _ieds call bis_fnc_selectRandom;
			_veh addMagazineCargoGlobal [_bomb, 1];
			null = [_veh,"spot"] execVM "carbomb.sqf";

		};

		if ( _rnd_action == 3 ) then {
			_grp = [getPos _veh, civilian,_units] call BIS_fnc_spawnGroup;
		} else {
			_grp = [getPos _veh, EAST,_units] call BIS_fnc_spawnGroup;
		};
		_grp addVehicle _veh;
		{ [_x] orderGetIn true; } forEach units _grp;

		null = [_grp,(_action call bis_fnc_selectRandom)] call sl_fnc_createWaypoints;

	};

	_wait = (120 + (random 300));

	if (debug == 1) then {
		hintSilent format["Chance: %1; Action: %2; Wait: %3; Round: %4/%5; Vehicle: %6;",_chance,_rnd_action,_wait,_round,rounds,_veh_of_choice];
		diag_log format["Chance: %1; Action: %2; Wait: %3; Round: %4/%5; Vehicle: %6;",_chance,_rnd_action,_wait,_round,rounds,_veh_of_choice];
		pvHint = format["Chance: %1; Action: %2; Wait: %3; Round: %4/%5; Vehicle: %6;",_chance,_rnd_action,_wait,_round,rounds,_veh_of_choice];
		publicVariable "pvHint";
	};

	sleep _wait;
	_round = _round + 1;
	_chance = 0;
	_rnd_action = 0;

};

sleep 180;

RBD_DONE = 1;
publicVariable "RBD_DONE";
OBJ_REEZO_ROADBLOCKDUTY setTaskState "SUCCEEDED";
null = ["TaskSucceeded",["Roadblock Duty"]] call bis_fnc_showNotification;
