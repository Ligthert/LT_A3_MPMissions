// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Door een recent tekort aan vrachtwagen banden zijn deze dingen hun gewicht in goud waard geworden. Er is toevallig net een C-130 gecrashed in de buurt waarvan het gerucht heeft dat deze een vrachtwagen band heeft. Haal deze op en breng het terug naar het vuur om het om te smelten voor waardevolle materialen!<br/><br/>Maar pas op! Jullie zijn niet alleen!
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
