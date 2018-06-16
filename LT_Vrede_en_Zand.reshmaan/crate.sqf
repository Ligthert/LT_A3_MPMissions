private ["_crate", "_guns", "_mags", "_availableHeadgear", "_availableGoggles", "_availableUniforms", "_availableVests", "_availableBackpacks"];

_crate = _this select 0;
_guns = ((getWeaponCargo _crate) select 0);
_mags = ((getMagazineCargo _crate) select 0);

_availableHeadgear = [
"NLD_NFPT_Helmet"
];

_availableGoggles = [
"G_Combat",
"G_Lowprofile",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Sport_Blackred",
"G_Sport_Blackyellow",
"G_Squares_Tinted",
"G_Tactical_Black",
"G_Tactical_Clear",
"G_Bandanna_blk"
];

_availableUniforms = [
"NLD_NFPT_Camo"
];

_availableVests = [
"V_BandollierB_khk",
"V_BandollierB_blk",
"V_PlateCarrier1_rgr",
"V_PlateCarrier2_rgr",
"V_PlateCarrierGL_rgr",
"V_PlateCarrierSpec_rgr",
"V_PlateCarrierL_CTRG",
"V_PlateCarrierH_CTRG"
];

_availableBackpacks = [
"B_AssaultPack_rgr",
"B_AssaultPack_mcamo",
"B_Kitbag_rgr",
"B_Kitbag_mcamo",
"B_TacticalPack_blk",
"B_TacticalPack_mcamo"
];


[_crate,_availableBackpacks,true,true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,_availableHeadgear +_availableGoggles + _availableUniforms + _availableVests,true,true] call BIS_fnc_addVirtualItemCargo;
[_crate,_mags,true,true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,_guns,true,true] call BIS_fnc_addVirtualWeaponCargo;