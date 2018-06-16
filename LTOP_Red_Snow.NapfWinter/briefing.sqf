// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
De taken zijn simpel en niet in perse in deze volgorde:<br/>
- <marker name='obj1'>Om verdere Russische propaganda te voorkomen vragen wij jullie om de TV-station van de regio te controlleren.</marker><br/>
- <marker name='obj2'>Deze barakken zijn een dorn in het oog omdat dit de basis is waar de voorheen vriendelijke Russen van werkte. Dit verstoord nu eigenlijk het landschap. Misschien wordt het beter als het van ons is.</marker><br/>
- <marker name='obj3'>Tenslotte deze HQ heeft liefde nodig. Dat speciale die wij alleen kunnen geven.</marker> Hierin verschuilt de blauwe barret dragende commodante die de eenheden op dit eiland overziet. Arresteer de beste man.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Zonder zelf een defensie apparaat te hebben heeft NAPF o.a. ons ingehuurd om hun te helpen met een kleine bezetting van een Russische leger voordat ze gaan doen alsof dit eiland van hun is.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Voornamelijk infanterie met de gebruikelijk WARSAW PACT wapens en enkel technicals bewapend met een .50-cals<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
N.V.T.
"]];
