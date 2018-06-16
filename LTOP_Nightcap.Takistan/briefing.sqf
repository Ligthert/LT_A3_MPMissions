// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
We moeten dieper het land in om waardevolle onderdelen van CSAT uit te schakelen.<br/>
<br/>
Onze eerste taak is een serie van 4 checkpoints uit te schakelen in deze ravijn:<br/>
- <marker name='checkpoint1'>Checkpoint #1</marker><br/>
- <marker name='checkpoint2'>Checkpoint #2</marker><br/>
- <marker name='checkpoint3'>Checkpoint #3</marker><br/>
- <marker name='checkpoint4'>Checkpoint #4</marker><br/>
<br/>
Zuiver deze checkpoints en leet de boel!<br/>
<br/>
Wat daarna nog rest is:<br/>
- <marker name='obj2'>Schakel een voorraad uit belangrijk voor de logistiek van CSAT</marker>.<br/>
- <marker name='obj1'>Een geheime wapen opslag staat op het punt gevonden te worden, laat deze verdwijnen</marker>.<br/>
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
