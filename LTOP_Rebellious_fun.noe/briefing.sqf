// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","Onze mooie eiland is onder druk...<br/>
<br/>
Onder druk van vuile rebellen gesteund door buitenlandse overheden. We moeten ze eens een lesje leren voordat alles een puinhoop wordt.<br/>
<br/>
- <marker name='obj1'>Zuiver hun lokale HQ en neem geen arrestanten...</marker><br/>
- <marker name='obj2'>Doorzoek dit kut dorp voor wapens, vernietig het!</marker><br/>
- <marker name='obj3'>Doorzoek dit woud voor de commendant wat dit verzet aanstuurt. Arresteer de beste man!</marker><br/>
<br/>
Als je klaar ben kan je na afloop ff deze uitrusten in <marker name='obj4'>deze 'safehouse'</marker>"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
