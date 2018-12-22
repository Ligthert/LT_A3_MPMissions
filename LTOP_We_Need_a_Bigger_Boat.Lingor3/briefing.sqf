// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

 _mis = player createDiaryRecord ["diary", ["Mission","<br/><marker name='gtfo'>Ga naar de boten en vlucht</marker>. Maar er is iets meer in het woud..."]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>De helicopter is neergestort, maar toen we erover heen vlogen zagen we boten in de omgeving. Ga daar naar toe en hervat je reis."]];
