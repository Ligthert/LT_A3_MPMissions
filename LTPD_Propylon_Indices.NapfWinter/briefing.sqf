// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>Het is simpel:<br/>
Deze vervelende sneeuwpop is zit wereld heerschapij in de weg!<br/>
<br/>
Wij moeten van deze sneeuwpop een voorbeeld maken, kosten wat het kost.<br/>
<br/>
Jullie opdracht is simpel:<br/>
- Plak alle explosieven die je bij je hebt tegen deze vervelende karakter en maak een einde van zijn terreur!<br/>"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
