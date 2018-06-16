// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","Doel:<br/>
Aanvallers: Vernietig de munitie-voorraad<br/>.
Verdedigers: Verdedig kosten wat het kost de voorraad<br/>.
<br/>
Regels:<br/>
Aanvallende team mag explosieven gebruiken om de voorraad op te blazen. Een crate staat on-base hiervoor.<br/>
Verdedigende team mag de voorraad verstoppen binnen de grens door deze dmv ACE te verstoppen.<br/>
Verdedigende team mag anders dan grenaten geen explosieven gebruiken.<br/>
Beide teams krijgen 5 minuten om zich voor te bereiden. De tijd begint te lopen na de TP van de verdedigende kant.<br/>
Na 5 minuten mogen de aanvallers vanaf 500m vanaf de verdedigende positie teleporteren (ACE self-interact)<br/>
Er mag geen gear van de vijand opgepakt worden.<br/>
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
