// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Eerste stap is <marker name='obj1'>de AAA dat onze helicopter heeft neergehaald</marker> uitschakelen om verdere herhaling te voorkomen.<br/>
<br/>
Ten tweede wordt het doen waarvoor we kwamen onze hossie redden.<br/>
<br/>
De intel is wat vaag en we zullen wat raids uit moeten voeren om deze VIP te vinden. We hebben de volgende plekken in de regio gevonden:<br/>
- <marker name='obj2'>Deze verlaten kerk</marker>. Kans is klein, kan geen kwaad om te checken.<br/>
- <marker name='obj3'>Een kleine kamp</marker>. Kans is redelijk, weer.. SVP kijken of je de beste man kan vinden.<br/>
- <marker name='obj4'>De stad Giswil</marker>. Kans is klein. Mogelijk te skippen.<br/>
- <marker name='obj6'>De ruines van een verlaten kasteel.</marker> Kans is onbekend. Doorzoek het object.<br/>
- <marker name='obj7'>Een kleine militaire basis.</marker> Zeer waarschijnlijk.<br/>
<br/>
<br/>
Gezien onze heli stuk is. <marker name='obj5'>Ga na afloop naar het vliegveld</marker>, hijack een vliegtuig en neem het mee voor een joyride! :D<br/>
<br/>
Overigens: Ze zijn wat happy met patrouilles. Pas op, voordat je het weten zitten ze met z'n alle op je nek....<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Tijdens een missie om op zoek te gaan naar gekidnapte zakenman is onze helicopter neergestort. Wij konden nog maar net op tijd eruit springen voordat het ding explodeerde! Ondanks dit zijn wij allemaal in goede staat en moeten wij alsnog door zetten.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Een kleine battalion Infanterie met beperkt aantal voertuigen en heli's. Niet sterk op zich zelf, maar dodelijk in groepen.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
N.V.T.
"]];
