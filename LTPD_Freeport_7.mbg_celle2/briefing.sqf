// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.
 _mis = player createDiaryRecord ["diary", ["Mission","<marker name='obj1'>Muden</marker> is toe aan wat decommunisering want de Russen hebben het ingenomen!<br/>
 <br/>
 Jullie taak is simpel:<br/>
 - Neem Muden terug en verdedig het voor eventuele tegenaanvallen!<br/><br/><br/><br/><br/><br/>Backup is onderweg...<br/><br/><br/><br/><br/><br/><br/>Misschien..."]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
