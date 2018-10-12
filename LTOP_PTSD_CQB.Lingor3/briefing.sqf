// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
1) GTFO. De vijand weet waar wij zijn. Zorg dat je snel het gebied verlaat!<br/>
2) Hack de computer bovenaan de <marker name='obj1'>de communicatie antenne</marker> en maak contact met HQ en wacht op instructies.
"]];

_sit = player createDiaryRecord ["diary", ["Situatie","<br/>
Onderweg naar huis na een mislukte oorlog worden wij boven Lingor neergeschoten. Onze vliegtuig weet het te overleven, maar stort neer midden op het eiland. Wij moeten ASAP GTFO en naar huis, maar onze long-range radio in de vliegtuig is stuk. Dus dat wordt de comms-array in het zuiden hacken en kijken wat HQ zegt.<br/>
<br/>
<font size='18'>Vijandelijke Eenheden</font><br/>
Wij zullen het op moeten nemen tegen een kleine battalion van rebellen.<br/>
"]];
