// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
1) Ren naar de overkant;<br/>
2) Ga niet dood;<br/>
3) Hack de computer;<br/>
<br/>
( Klim niet op de rotsen. )
"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
