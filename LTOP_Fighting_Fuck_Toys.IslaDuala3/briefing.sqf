// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
*** Insert mission briefing here. ***
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
*** Insert general information about the situation here.***<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
*** Insert information about enemy forces here.***<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
*** Insert information about friendly forces here.***
"]];

if (player == basl) then {
  _respawn = player createDiaryRecord ["diary", ["Update respawn","<execute expression=""'respawn_west' setMarkerPos (getPos player);"">Move Respawn to my Pos</execute>."]];
};
