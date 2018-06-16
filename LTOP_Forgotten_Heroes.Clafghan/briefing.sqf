// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis_en = player createDiaryRecord ["diary", ["Mission","<br/>During recent operations the local rebel forces have gained a lot of terrain and it is up to you to conquer this terrain back. For this operation to be successfull you need to perform the following tasks:<br/>
<br/>
- <marker name='obj4'>Search and Destroy a hidden ammo cache in this area</marker>;<br/>
- <marker name='towns'>Detail any rebel forces in the two towns that may recide there</marker>;<br/>
- <marker name='obj5'>Capture and/or disable this artillery nest that covers this entire valley</marker>;<br/>
<br/>
This is an easy task and should be able to be achieved by people of your calibre!
"]];

// миссия

_mis_en = player createDiaryRecord ["diary", ["миссия","<br/>"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
