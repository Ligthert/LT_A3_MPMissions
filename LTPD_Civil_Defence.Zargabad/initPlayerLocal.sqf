// No LR Radio please
tf_no_auto_long_range_radio = true;
TF_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;

// Start with Weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Allow for suicide -- because fuck life
murshun_easywayout_canSuicide = true;

lastShout = 0;

sl_shout = {
	if ( (time - lastShout) >= 5 ) then { [player, (["akbar1","akbar2","akbar3","akbar4","akbar5","akbar6"] call bis_fnc_selectRandom),50] call CBA_fnc_globalSay3d; lastShout = time; };
};

null = [0x14, [false,false,false], {call sl_shout}] call CBA_fnc_addKeyHandler;
null = execVM "\lt_template_base\scripts\QS_icons.sqf";
