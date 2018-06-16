private ["_markers"];

_markers = ["patrol_msta","patrol_rog","patrol_staroye","patrol_pusta","location_msta","location_rog","location_staroye","location_pusta","spawn_inf1","spawn_inf2","spawn_inf3","ao","base"];
{
    _x setMarkerAlpha 0;
} forEach _markers;

["Initialize", [true]] call BIS_fnc_dynamicGroups;

lt_fnc_spawnGroup = {
  private ["_side","_amount","_pos","_units","_grp"];

  _side = _this select 0;
  _amount = _this select 1;
  _pos = _this select 2;
  _units = _this select 3;

  _grp = createGroup _side;

  for "_i" from 1 to _amount do { ( _units call BIS_fnc_selectRandom ) createUnit [_pos,_grp]; };

  _grp
};

chdkz_units = ["CUP_O_INS_Soldier_AK74","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier","CUP_O_INS_Soldier_Ammo","CUP_O_INS_Soldier_GL","CUP_O_INS_Officer","CUP_O_INS_Medic","CUP_O_INS_Commander","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_AT","CUP_O_INS_Soldier_AA","CUP_O_INS_Sniper","CUP_O_INS_Soldier_Exp","CUP_O_INS_Saboteur","CUP_O_INS_Worker2","CUP_O_INS_Woodlander1","CUP_O_INS_Woodlander2","CUP_O_INS_Woodlander3","CUP_O_INS_Villager3","CUP_O_INS_Villager4"];
chdkz_car = ["CUP_O_UAZ_MG_CHDKZ","CUP_O_UAZ_AGS30_CHDKZ","CUP_O_UAZ_SPG9_CHDKZ","CUP_O_UAZ_METIS_CHDKZ","CUP_O_Datsun_PK_Random"];
chdkz_ifv = ["CUP_O_BMP2_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BMP_HQ_CHDKZ","CUP_O_BRDM2_ATGM_CHDKZ","CUP_O_BRDM2_HQ_CHDKZ","CUP_O_ZSU23_ChDKZ"];
chdkz_tank = ["CUP_O_T72_CHDKZ"];
chdkz_heli = ["CUP_O_MI6A_CHDKZ","CUP_O_MI6T_CHDKZ","CUP_O_Mi8_CHDKZ","CUP_O_Mi8_VIV_CHDKZ"];


ru_emr_units = ["CUP_O_RU_Soldier_EMR","CUP_O_RU_Soldier_Saiga_EMR","CUP_O_RU_Soldier_GL_EMR","CUP_O_RU_Soldier_SL_EMR","CUP_O_RU_Soldier_TL_EMR","CUP_O_RU_Soldier_MG_EMR","CUP_O_RU_Soldier_AR_EMR","CUP_O_RU_Soldier_LAT_EMR","CUP_O_RU_Soldier_AT_EMR","CUP_O_RU_Soldier_HAT_EMR","CUP_O_RU_Soldier_AA_EMR","CUP_O_RU_Sniper_EMR","CUP_O_RU_Sniper_KSVK_EMR","CUP_O_RU_Spotter_EMR","CUP_O_RU_Soldier_Marksman_EMR","CUP_O_RU_Medic_EMR","CUP_O_RU_Engineer_EMR","CUP_O_RU_Explosive_Specialist_EMR","CUP_O_RU_Soldier_Light_EMR","CUP_O_RU_Officer_EMR"];
ru_emr_car = ["CUP_O_UAZ_Unarmed_RU","CUP_O_UAZ_Open_RU","CUP_O_UAZ_MG_RU","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_SPG9_RU","CUP_O_UAZ_METIS_RU"];
ru_emr_ifv = ["CUP_O_BMP2_RU","CUP_O_BRDM2_RUS","CUP_O_BRDM2_ATGM_RUS","CUP_O_BRDM2_HQ_RUS","CUP_O_2S6M_RU","CUP_O_BTR90_RU","CUP_O_BMP3_RU"];
ru_emr_tank = ["CUP_O_T72_RU"];
ru_emr_heli = ["CUP_O_Mi24_P_RU","CUP_O_Mi24_V_RU","CUP_O_MI6A_RU","CUP_O_MI6T_RU","CUP_O_Mi8_VIV_RU","CUP_O_Mi8_RU"];
