// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Deze vuurbasis is toe aan herbevoorrading, ze hebben twee weken geleden hun laatst levering aan voedsel en munitie ontvangen en de gasten daar zijn aan het springen voor nieuw materieel.<br/>
<br/>
Nu is het zo dat de lokale rebellen actiever zijn geworden, zeer waarschijnlijk door de recente influx aan Tsjetsjeense strijders. Dit zal ons werk aanzienlijk bemoeilijken.<br/>
<br/>
Voor nu is de opdracht simpel:<br/>
- Transporteer de voorraad truck van DORP NAAM HIER<br/>
- Naar FOB NAAM HIER<br/>
<br/>
Jullie veiligheid heeft prioriteit dus een paar voertuigen meer of minder maakt niet uit, maar breng zolang het gaat de nieuwe voorraden naar de FOB.<br/>"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
