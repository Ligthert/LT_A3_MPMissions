// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
BLUFOR:<br/>
Geef de overheidsfunctionaris een tour van de Moskee in Zargabad van circa 5 minuten.<br/>
Hervat de tour naar het noorden van Zargabad.<br/>
<br/>
Doel is om Hearts and Minds te winnen, dus hou je wapen laag en hebt respect voor de lokale burger bevolking. (RolePlaying!)<br/>
Pas bij waargenomen schoten mag over gegaan worden tot evacuatie.<br/>
<br/>
REDFOR:<br/>
Maak van de betreffende tour zijn laatste en ontsnap levend van BLUFOR.
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
