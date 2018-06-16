// Compulsary missions start banner
diag_log ".____                 .__                     .___      ";
diag_log "|    |    ______  _  _|  | _____    ____    __| _/______";
diag_log "|    |   /  _ \ \/ \/ /  | \__  \  /    \  / __ |/  ___/";
diag_log "|    |__(  <_> )     /|  |__/ __ \|   |  \/ /_/ |\___ \ ";
diag_log "|_______ \____/ \/\_/ |____(____  /___|  /\____ /____  >";
diag_log "        \/                      \/     \/      \/    \/ ";
diag_log "___________              __  .__              .__       ";
diag_log "\__    ___/____    _____/  |_|__| ____ _____  |  |      ";
diag_log "  |    |  \__  \ _/ ___\   __\  |/ ___\\__  \ |  |      ";
diag_log "  |    |   / __ \\  \___|  | |  \  \___ / __ \|  |__    ";
diag_log "  |____|  (____  /\___  >__| |__|\___  >____  /____/    ";
diag_log "               \/     \/             \/     \/          ";

// Spectator
[] execVM "CSSA3\CSSA3_init.sqf";

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

// TFR settings
tf_no_auto_long_range_radio = true;

// ACE3 Settings
// player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player setVariable ["ACE_hasEarPlugsIn", true, true];
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";
