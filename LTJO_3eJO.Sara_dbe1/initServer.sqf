// Nuke the annoying stuff
{ hideObjectGlobal _x; } forEach ((getMarkerPos "remove1") nearObjects 5);
{ hideObjectGlobal _x; } forEach ((getMarkerPos "remove2") nearObjects 5);
{ hideObjectGlobal _x; } forEach ((getMarkerPos "remove3") nearObjects 5);

execVM "server_debug.sqf";
