// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";

ts_factions = ["OPF_F","OPF_G_F","IND_F","IND_G_F","OPF_T_F","IND_C_F","NLDO_RU_VDV_76","NLDO_RU_VDV_31","NLDO_UA_UAF_95","CUP_O_TK_INS","CUP_O_TK","CUP_O_CHDKZ","CUP_O_SLA","CUP_O_RU_EMR","CUP_O_RU_FLORA","CUP_I_NAPA","CUP_I_RACS","CUP_I_TK_GUE"];

populateCity = {
  diag_log ("sw_patrols_multipl" call BIS_fnc_getParamValue);
  diag_log ("sw_faction" call BIS_fnc_getParamValue);

  _faction = ts_factions select ("sw_faction" call BIS_fnc_getParamValue);

  null = ["ao", _faction, 250, ((count allPlayers) * ("sw_patrols_multipl" call BIS_fnc_getParamValue) ),6,2,2,0,0,0,100,100] call lt_fnc_autozone;
  sleep 60;
  "ao" setMarkerAlpha 0.5;
  sleep 60;
  "ao" setMarkerAlpha 0.5;
  sleep 60;
  "ao" setMarkerAlpha 0.5;
  sleep 60;
  "ao" setMarkerAlpha 0.5;
  sleep 60;
  "ao" setMarkerAlpha 0.5;
  sleep 60;
  "ao" setMarkerAlpha 0.5;
};
