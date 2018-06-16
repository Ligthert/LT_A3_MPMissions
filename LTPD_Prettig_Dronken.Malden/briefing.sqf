// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- [Admin] Kies een leuke plek om te verdedigen (hou 400m-1500m spawn range in acht)<br/>
- [Spelers] Zet je schrap en blijf leven!<br/>
- [Spelers] Ben je dood? Wanneer na ~een half uur een admin de hint geeft slot de benodigde hoeveelheid piloten en red onze jongens!<br/>
- [Spelers] Iedereen in de heli en onderweg naar veiligheid; call it!
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Wij zijn de Royal Army Corps Sahrani. De vijand moeten dood.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Er zijn oneindig veel tot de tanden bewapende vijanden.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Onszelf en de respawn piloten! :D
"]];
