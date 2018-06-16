removeAllWeapons player;
removeGoggles player;
removeHeadgear player;
removeVest player;
removeUniform player;
removeAllAssignedItems player;
clearAllItemsFromBackpack player;
removeBackpack player;
player setUnitLoadout(player getVariable["Saved_Loadout",[]]);

player enableStamina false;
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";
enableSaving [false, false];
enableSentences false;
STUI_Occlusion = false;
enableEnvironment [false, true];
