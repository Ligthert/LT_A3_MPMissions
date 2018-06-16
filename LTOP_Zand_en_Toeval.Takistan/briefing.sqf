// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>De opdracht is simpel: Bezoek de 5 kampen en zoek naar een buitenlandse officier die de lokale rebellen helpen."]];

 _sit = player createDiaryRecord ["diary", ["Situation","<br/>
<br/>
In noordelijke Takistan zijn de rebellen nog actief. De vermoeden waren altijd dat ze van buitenaf hulp kregen. HUMINT heeft dit bevestigd en hun liason is nu in 1 van de 5 verzetshaarden van de rebellen, 'arresteer' deze man.
<br/>
<font size='18'>ENEMY FORCES</font><br/>
WARPACT wapens op circa 100 soldaten en de incidentele technical<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Jullie moeten het doen met jullie zelf.
"]];
