// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Als eerste:<br/>
 - Overleef de QRF die weten waar jullie zijn.<br/>
<br/>
Zodra jullie dit overleefd hebben (in willekeurige volgorde):<br/>
- Vernietig een ammo-cache <marker name='obj1'>op de vermoedelijke locatie</marker>. Het zal licht beveiligd zijn, maar dailed-in door de arty en mortier stellingen in de buurt.<br/>
- Schakel Anti-Tank artillerie uit <marker name='obj2'>ten noorden van jullie positie</marker>.<br/>
- Maak het leven makkelijker en <marker name='obj3'>schakel deze mortier-nest uit</marker>.<br/>
- <marker name='obj4'>Hier in het bos</marker> ergens is een groet BM-21s die af en toe wat gebieden aan het spammen zijn. Fu-Fu-Fu-Fudge 'em up!<br/>
- Neem wraak! <marker name='obj6'>Schakel dit onschuldige luchtafweerschut uit</marker>!<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Onderweg naar jullie missie wordt de vleugel van jullie vliegtuig geraakt en maakt er een gat in de vleugel wat groter is dan wat het mag zijn. Terwijl het vliegtuig hard onderweg is zichzelf de grond in te boren weten jullie uit het vliegtuig te springen. Ten oosten van waar de vliegtuig neerstort landen jullie bij een nabij gelegen boerderij. Hoewel dit comfort biedt weten jullie dat jullie omsingelt zijn door de vijand... en het zou gewoon bijna eerlijk zijn, voor hun!"]];
