// player_createTrigger.sqf - by Sacha Ligthert
// Goal: Create a trigger for players to request new missions.

_trg = createTrigger["EMPTYDETECTOR",getPos player];
_trg setTriggerText "Request a new mission";
_trg setTriggerActivation["ALPHA","PRESENT",true];
_trg setTriggerStatements["this","call SO_fnc_requestMission",""];