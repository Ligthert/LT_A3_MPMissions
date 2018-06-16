// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
<font size='18'>Situation</font><br/>
Er is een piloot met zijn prototype helicopter neergeschoten. Volgens de moderne pak die al zijn vitals checked leeft hij nog steeds, maar is naar wat lijkt bewusteloos. Nu is de taak simpel: Haal hem op, breng hem naar huis. (Voor jullie russen: kidnap hem, martel voor informatie). Maar er is het probleem dat de eeuwige vijand dat ook wil en jullie allebei tegen elkaar aan het racen zijn, maar een rebelle factie heeft de site al afgezet dus daar zal nog wat weerstand zijn.<br/>
<br/>
<font size='18'>Missie</font><br/>
- Vind de piloot en neem hem mee!<br/>
- Voorkom dat de vijand handen op de piloot krijgt<br/>
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
