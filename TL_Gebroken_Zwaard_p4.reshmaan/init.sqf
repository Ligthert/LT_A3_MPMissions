//Init UPSMON script
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";

tf_no_auto_long_range_radio = true;
player addItem "AGM_EarBuds";
player addItem "AGM_MapTools";

"extraction" setMarkerAlpha 0;
"ao" setMarkerAlpha 0;

	//Only players can be spectated. True/False
	CSSA3_onlySpectatePlayers = True;

	//Perspective modes that can be used.
	CSSA3_allowedModes = ["freeCam","firstPerson","thirdPerson"];

	//Sides that BLUFOR players can spectate.
	CSSA3_bluforSpectateable = [blufor, opfor, civilian, resistance];

	//Sides that OPFOR players can spectate.
	CSSA3_opforSpectateable = [blufor, opfor, civilian, resistance];

	//Sides that CIVILIAN players can spectate.
	CSSA3_civilianSpectateable = [blufor, opfor, civilian, resistance];

	//Sides that INDEPENDENT players can spectate.
	CSSA3_independentSpectateable = [blufor, opfor, civilian, resistance];
