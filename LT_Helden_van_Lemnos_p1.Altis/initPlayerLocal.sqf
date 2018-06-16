removeBackpack player;
removeVest player;
player addItem "ACE_Flashlight_XL50";
player addItem "ACE_MapTools";
player setVariable ["ACE_hasEarPlugsIn", true, true];
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Gear!
player addVest "V_RebreatherB";
player addBackpack "NLD_MTP_Carryall_Empty";

// Add stuff to the backpack
player addItemToBackpack "NLD_MTP_PlateCarrier";
player addItemToBackpack "SmokeShell";
player addItemToBackpack "SmokeShell";
player addItemToBackpack "HandGrenade";
player addItemToBackpack "HandGrenade";
player addItemToBackpack "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim";
player addItemToBackpack "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim";
player addItemToBackpack "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim";
player addItemToBackpack "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim";
player addItemToBackpack "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim";
player addItemToBackpack "ACE_IR_Strobe_Item";
player addItemToBackpack "ACE_CableTie";

// Silencers
player addPrimaryWeaponItem  "muzzle_snds_H";
player addHandgunItem "muzzle_snds_L";

// Diver Googles
removeGoggles player;
player addGoggles "G_B_Diving";

// Add Googles
player addItem "ACE_NVG_Wide";
player assignItem "ACE_NVG_Wide";