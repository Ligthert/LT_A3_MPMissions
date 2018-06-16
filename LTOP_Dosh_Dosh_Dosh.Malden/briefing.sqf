// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>Right, in this insurgent infested area there is a lot of money we need to get away with. But the damn bastards hid it somewhere and its up to us to fuck'n find it. First job is to raid the office of a suspect insurgent leader and see what he has. Go forth and bring us the money! (Because us Office workers need to pay bills too...)"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
