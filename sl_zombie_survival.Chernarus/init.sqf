player setCustomAimCoef 0.10;
player setUnitRecoilCoefficient 0.57;
player enableFatigue false;
player enableStamina false;
player allowSprint true;

if (isServer) then {

	civilians = ["C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F_afro","C_man_polo_1_F_euro","C_man_polo_1_F_asia","C_man_polo_2_F","C_man_polo_2_F_afro","C_man_polo_2_F_euro","C_man_polo_2_F_asia","C_man_polo_3_F","C_man_polo_3_F_afro","C_man_polo_3_F_euro","C_man_polo_3_F_asia","C_man_polo_4_F","C_man_polo_4_F_afro","C_man_polo_4_F_euro","C_man_polo_4_F_asia","C_man_polo_5_F","C_man_polo_5_F_afro","C_man_polo_5_F_euro","C_man_polo_5_F_asia","C_man_polo_6_F","C_man_polo_6_F_afro","C_man_polo_6_F_euro","C_man_polo_6_F_asia","C_man_p_fugitive_F","C_man_p_fugitive_F_afro","C_man_p_fugitive_F_euro","C_man_p_fugitive_F_asia","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_beggar_F_euro","C_man_p_beggar_F_asia","C_man_w_worker_F","C_scientist_F","C_man_hunter_1_F","C_man_p_shorts_1_F","C_man_p_shorts_1_F_afro","C_man_p_shorts_1_F_euro","C_man_p_shorts_1_F_asia","C_man_shorts_1_F","C_man_shorts_1_F_afro","C_man_shorts_1_F_euro","C_man_shorts_1_F_asia","C_man_shorts_2_F","C_man_shorts_2_F_afro","C_man_shorts_2_F_euro","C_man_shorts_2_F_asia","C_man_shorts_3_F","C_man_shorts_3_F_afro","C_man_shorts_3_F_euro","C_man_shorts_3_F_asia","C_man_shorts_4_F","C_man_shorts_4_F_afro","C_man_shorts_4_F_euro","C_man_shorts_4_F_asia","C_journalist_F","C_Orestes","C_Nikos","C_Nikos_aged","C_Driver_1_F","C_Driver_2_F","C_Driver_3_F","C_Driver_4_F","C_Driver_1_black_F","C_Driver_1_blue_F","C_Driver_1_green_F","C_Driver_1_red_F","C_Driver_1_white_F","C_Driver_1_yellow_F","C_Driver_1_orange_F","C_Marshal_F"];
	alive_units = [];

	execVM "functions.sqf";
	sleep 1;
	execVM "preSpawnInfected.sqf";
	sleep 20;
	execVM "manageInfected.sqf";
};