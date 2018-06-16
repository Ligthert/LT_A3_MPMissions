// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Ga naar Garmsar!<br/>
- Vind de vehicle-pool en maak deze onschadelijk!<br/>
- Vind de ammo cache verborgen in 1 van de gebouwen en maak deze onschadelijk!<br/>
- Pas op voor eventuele reinforcements vanuit het nabij belegen dorp!
- GET THE FUCK OUT!
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
