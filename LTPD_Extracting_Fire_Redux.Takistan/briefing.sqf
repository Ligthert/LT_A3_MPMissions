// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Infantrie: Blijf in leven!<br/>
Arty: Blijf in contact met Infantrie en drop shells waar nodig.<br/>
IFVs: Race naar inf en red hun!
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Een missie is stuk gelopen en het 1 leidde tot het ander en nu zijn wij omsingelt door tuig en de basis moet help toesturen.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
WARSAWPACT wapens en voertuigen.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Its just us...
"]];
