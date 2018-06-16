// We will be doing everything local, because I want the AI to spawn by the players instead of bugging the server.

// Private vars
private ["_color","_grp","_group_type","_side","_price","_trg","_areas","_area_count","_side_count"];
_areas = ["area_1","area_2","area_3","area_4","area_5","area_6","area_7","area_8","area_9","area_10","area_11","area_12"];
budget = 0;
_side = side player;
if (side player == west) then {
	_color = "ColorBlue";
};

if (side player == east) then {
	_color = "ColorRed";
};

// The functions required...

SL_fnc_spawnGroup = {

	private ["_group_type","_spawn","_grp","_price","_side_count","_vehicle","_spawn_pos"];
	_group_type = _this select 0;
	_price = _this select 1;
	_side = side player;

	if (budget < _price) exitWith{player sideChat "Not enough funding!";};

	//player sideChat format["Side: %1; Group Type: %2;",_side,_group_type];

	{
		if ( _side == side _x ) then { _side_count = _side_count + 1; };
	} forEach allGroups;

	if (_side_count <= 140) exitWith{player sideChat "Unit cap reached";};

	if (_side == west) then {
		_spawn_pos = getMarkerPos "blufor_spawn" findEmptyPosition [0,100];
		_grp = createGroup west;
	};
	if (_side == east) then {
		_spawn_pos = getMarkerPos "redfor_spawn" findEmptyPosition [0,100];
		_grp = createGroup east;
	};


	if ( _group_type == "fireteam" ) then {
		if (_side == west) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam") ] call bis_fnc_spawnGroup;
		};
		if (_side == east) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam") ] call bis_fnc_spawnGroup;
		};
	};

	if ( _group_type == "assault" ) then {
		if (_side == west) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfAssault") ] call bis_fnc_spawnGroup;
		};
		if (_side == east) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfAssault") ] call bis_fnc_spawnGroup;
		};
	};

	if ( _group_type == "antitank" ) then {
		if (_side == west) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam_AT") ] call bis_fnc_spawnGroup;
		};
		if (_side == east) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam_AT") ] call bis_fnc_spawnGroup;
		};
	};

	if ( _group_type == "squad" ) then {
		if (_side == west) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons") ] call bis_fnc_spawnGroup;
		};
		if (_side == east) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad") ] call bis_fnc_spawnGroup;
		};
	};

	if ( _group_type == "sniper" ) then {
		if (_side == west) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_SniperTeam") ] call bis_fnc_spawnGroup;
		};
		if (_side == east) then {
			_grp = [_spawn_pos, side player, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_SniperTeam") ] call bis_fnc_spawnGroup;
		};
	};


	///////////////////////////////////
/*
	//  B_Soldier_F
	if ( _group_type == "rifleman" ) then {
		if (_side == west) then {
			"B_Soldier_F" createUnit [_spawn_pos,_grp,"",1,"COLONEL"];
		};
		if (_side == east) then {
			"O_Soldier_F" createUnit [_spawn_pos,_grp,"",1,"COLONEL"];
		};
	};

	//  B_soldier_AR_F
	if ( _group_type == "machinegunner" ) then {
		if (_side == west) then {
			"B_Soldier_AR_F" createUnit [_spawn_pos,_grp,"",1,"COLONEL"];
		};
		if (_side == east) then {
			"O_Soldier_AR_F" createUnit [_spawn_pos,_grp,"",1,"COLONEL"];
		};
	};

	//  B_soldier_LAT_F
	if ( _group_type == "antitank" ) then {
		if (_side == west) then {
			"B_Soldier_LAT_F" createUnit [_spawn_pos,_grp,"",1,"COLONEL"];
		};
		if (_side == east) then {
			"O_Soldier_LAT_F" createUnit [_spawn_pos,_grp,"",1,"COLONEL"];
		};
	};
*/

	// Rewrite
	if ( _group_type == "mrap_hmg" ) then {
		if (_side == west) then {
			_vehicle = [_spawn_pos, 90, "B_MRAP_01_hmg_F", _side] call BIS_fnc_spawnVehicle;
		};
		if (_side == east) then {
			_vehicle = [_spawn_pos, 90, "O_MRAP_02_hmg_F", _side] call BIS_fnc_spawnVehicle;
		};
	};


	if ( _group_type == "mrap_gmg" ) then {
		if (_side == west) then {
			_vehicle = [_spawn_pos, 90, "B_MRAP_01_gmg_F", _side] call BIS_fnc_spawnVehicle;
		};
		if (_side == east) then {
			_vehicle = [_spawn_pos, 90, "O_MRAP_02_gmg_F", _side] call BIS_fnc_spawnVehicle;
		};
	};

	if ( _group_type == "apc" ) then {
		if (_side == west) then {
			_vehicle = [_spawn_pos, 90, "B_APC_Wheeled_01_cannon_F", _side] call BIS_fnc_spawnVehicle;
		};
		if (_side == east) then {
			_vehicle = [_spawn_pos, 90, "O_APC_Wheeled_02_rcws_F", _side] call BIS_fnc_spawnVehicle;
		};
	};

/*
	if ( _group_type == "arty" ) then {
		if (_side == west) then {
			_vehicle = [_spawn_pos, 90, "B_MBT_01_arty_F", _side] call BIS_fnc_spawnVehicle;
		};
		if (_side == east) then {
			_vehicle = [_spawn_pos, 90, "O_MBT_02_arty_F", _side] call BIS_fnc_spawnVehicle;
		};
		_grp = _vehicle select 2;
		(_vehicle select 0) lock true;
	};

	if ( _group_type == "tank" ) then {
		if (_side == west) then {
			_vehicle = [_spawn_pos, 90, "B_MBT_01_cannon_F", _side] call BIS_fnc_spawnVehicle;
		};
		if (_side == east) then {
			_vehicle = [_spawn_pos, 90, "O_MBT_02_cannon_F", _side] call BIS_fnc_spawnVehicle;
		};
		_grp = _vehicle select 2;
		(_vehicle select 0) lock true;
	};
*/

	if ( count _vehicle == 3 ) then {
		_grp = _vehicle select 2;
		(_vehicle select 0) lock true;
		(_vehicle select 0) addEventHandler["handleDamage",{_damage = _this select 2; _parts = ["wheel_1_1_steering","wheel_1_2_steering","wheel_1_3_steering","wheel_1_4_steering","wheel_2_1_steering","wheel_2_2_steering","wheel_2_3_steering","wheel_2_4_steering","motor","light_r","light_l","zbran","telo"]; if (_this select 1 in _parts) then { _damage = 0; }; _damage; }];
		(_vehicle select 0) allowCrewInImmobile true;
	};

	player hcSetGroup [_grp,""];
	budget = budget - _price;

};

// Create triggers that create units.
_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["ALPHA","PRESENT",true];
_trg setTriggerStatements["this", '["fireteam",50] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "Fireteam (€50)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["BRAVO","PRESENT",true];
_trg setTriggerStatements["this", '["antitank",100] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "Anti-Tank Team (€100)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["CHARLIE","PRESENT",true];
_trg setTriggerStatements["this", '["squad",200] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "Weapons Squad (€200)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["DELTA","PRESENT",true];
_trg setTriggerStatements["this", '["assault",250] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "Assault Squad (€250)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["ECHO","PRESENT",true];
_trg setTriggerStatements["this", '["mrap_hmg",500] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "MRAP HMG (€500)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["FOXTROT","PRESENT",true];
_trg setTriggerStatements["this", '["mrap_gmg",500] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "MRAP GMG (€500)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["GOLF","PRESENT",true];
_trg setTriggerStatements["this", '["apc",800] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "APC (€800)";

/*
_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["GOLF","PRESENT",true];
_trg setTriggerStatements["this", '["arty",1200] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "Artillery (€1200)";

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[0,0,0,false];
_trg setTriggerActivation["HOTEL","PRESENT",true];
_trg setTriggerStatements["this", '["tank",1500] call SL_fnc_spawnGroup', ""];
_trg setTriggerText "Tank (€1500)";
*/


// The infinte loop until you dieeeeee!
while {true} do {

	_area_count = 0;
	_side_count = 0;

	{
		if ( getMarkerColor _x == _color ) then {
			_area_count = _area_count + 1;
		};
	} forEach _areas;

	budget = budget + _area_count;

	{
		if ( _side == side _x ) then { _side_count = _side_count + 1; };
	} forEach allGroups;

	hint parseText format["Budget:<br/><t color='#00FF00' shadow='true' size='3'>€%1</t><br/>Units: %2/70",budget,_side_count];
	sleep 1;
};