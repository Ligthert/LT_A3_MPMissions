// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- <marker name='obj1'>Vernietig een luchtradar</marker><br/>
- <marker name='obj2'>Steel een laptop</marker><br/>
- <marker name='obj3'>Vernietig AAA</marker><br/>
- <marker name='obj4'>Saboteer Fuel-depot</marker><br/>
"]];

 _sit = player createDiaryRecord ["diary", ["Situation","<br/>
Ze weten dat wij er zijn en wij gaan de druk bevolkte gedeelte in. Dit gaat pijnlijk worden.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
- WARSAW-PACT wapens<br/>
- WARSAW-PACT IFVs (mogelijk tanks)<br/>
- Technicals<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Wat arty en wij...
"]];
