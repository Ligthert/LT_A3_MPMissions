// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
<marker name='obj1'>Doel #1</marker>: Schakel het commando voertuig uit om zo deze radar onbruikbaar te maken. Hoe minder ogen er naar ons kijken, hoe beter.<br/>
<marker name='obj2'>Doel #2</marker>: Zuiver deze FOB en bereid een hinderlaag voor voor wanneer de herbevoorading langs komt.<br/>
<marker name='obj3'>Doel #3</marker>: Deel spelden prikjes uit of neem deze basis in. Dit kan een zelfmoodmissie zijn, maar er is niks leukers dan leuk dood gaan met een glimlach! :)<br/>
<marker name='obj4'>Doel #4</marker>: (OPTIONEEL) Maak contact met een spion en airlift de beste man naar veiligheid.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
The situation is shit. The enemy is better armed, equiped and trained. But we are suicidal and have many of us we can loose to senseless violence.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Recent Warsaw pact equipment. Some vehicles.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Its just us...
"]];
