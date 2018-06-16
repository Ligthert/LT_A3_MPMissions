// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Zuiver deze twee eilanden en voorkom verdere aggressie!
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
De Nederlandse staat heeft behoefte aan nieuw leefgebied en het is aan jullie om dit waar te maken.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
WARSAWPACT wapens<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Dit zijn wij..."]];
