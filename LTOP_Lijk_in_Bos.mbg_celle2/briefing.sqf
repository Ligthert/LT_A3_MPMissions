// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>Der are serval bases und fobs spreed out über Celle 2. It ies your täsk to 'Reduce Se Demographic' of dese fobs and bases. Jah?<br/>
<br/>
- <marker name='obj1'>Distroi si Mortar Piet!</marker><br/>
- <marker name='obj2'>Sanitise se emeny base jah?</marker><br/>
- <marker name='obj3'>Disable se radar wiet luuuve!</marker><br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Vie are at war with se Ruskies<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Fiel Ruskies!<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Wir sind Allein.
"]];
