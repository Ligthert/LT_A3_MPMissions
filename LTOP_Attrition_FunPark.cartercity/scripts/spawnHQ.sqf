_units = ["CUP_O_INS_Soldier_AK74","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier","CUP_O_INS_Soldier_Ammo","CUP_O_INS_Soldier_GL","CUP_O_INS_Officer","CUP_O_INS_Medic","CUP_O_INS_Commander","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_AT","CUP_O_INS_Sniper","CUP_O_INS_Soldier_Exp"];

_grp = [east,50,getMarkerPos "lastSpawn",_units] call lt_fnc_createGroup;
// sleep 60;
_nul = [leader _grp,150,true,[100,5],true, true] execVM "lt_template_base\AI\GARRISON\Garrison_script.sqf";
