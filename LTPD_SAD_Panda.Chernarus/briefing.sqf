// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>Een UAV (Codenaam: Panda) is neergestort om en rond de Black Lake. Gezien de gevoeligheid is het zaak om dit object op te zoeken en te vernietigen.<br/>
<br/>
De preciese locatie weten we niet. Echter weten we wel dat het neergestort is in een open gebied in het bos ten noorden van de Black Lake. Door zoek deze gebieden en vernietig het.<br/>
<br/>
Na afloop keer terug naar het start punt."]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
