// TFR settings
tf_no_auto_long_range_radio = true;

// ACE3 Settings
player addItem "ACE_MapTools";
player setVariable ["ACE_hasEarPlugsIn", true, true];
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

////// Mission!

{ _x disableTIEquipment true; } foreach vehicles;

[getMarkerPos "ao", 2000, 49] call bis_fnc_destroyCity;

player enableFatigue false;

// Black screen, fade intro.
titleCut ["", "BLACK FADED", 999];
// We spawn this so it runs along side the 7 second display from within description.ext

any=[
        [
                ["PMC Campaign pt 3","<t align = 'center' size = '1.5'>%1</t><br/>"],
                ["By Sacha","<t align = 'center' size = '1.5'>%1</t><br/>"],
                ["http://lowtac.nl/","<t align = 'center' size = '1.5'>%1</t><br/>"],
                ["Sandistan, 20 November 2015","<t align = 'center' size = '1.5'>%1</t>"]

        ]
] spawn BIS_fnc_typeText;

titleCut ["", "BLACK IN", 5];

while {true} do {
	hndl = ppEffectCreate ["colorCorrections", 1501];
	hndl ppEffectEnable true;
	hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.20], [0.8, 0.74, 0.63, 0.40], [0.8, 0.74, 0.63, 0.30]];
	[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
	hndl ppEffectCommit 0;
	0 setFog 0.8;
	sleep 60;
};