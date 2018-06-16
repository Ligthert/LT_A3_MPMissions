// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Primair: <marker name='obj1'>Schakel de leider van dit verzet uit</marker>. De beste man zit in zijn eigen villa, arresteer hem zoals wij dat het beste kunnen;<br/>
<br/>
Secundaire opgaven:<br/>
- Een CIA operative is vermist en is voor het laatst gezien <marker name='obj2'>in zijn compound in Calapedro</marker>. Zoek uit wat er met hem gebeurd is, neem hem mee als hij nog te redden valt;<br/>
- <marker name='obj3'>Dit stukje AA</marker> kan ons nog heel veel pijn doen, schakel deze uit;<br/>
- Vermoedelijk is <marker name='obj4'>hier een munitie opslag</marker>, mag dit het geval zijn... schakel deze dan uit;<br/>
- Vermoedelijk is <marker name='obj5'>hier een vehicle-pool</marker>, mag dit het geval zijn... schakel deze dan uit;<br/>
- <marker name='obj6'>Hier is een bank</marker>, beroof deze... We kunnen het geld wel gebruiken.;<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Het samengestelde leger van Dingor heeft de burger bevolking gemilitariseerd na een geld-injectie van de Wereld Gezondheids Organisatie en heeft het offensief geopenend. Gezien de budgeten er inmiddels wel doorheen zijn hebben ze de budget afdeling van ION PMC weten te huren en hebben ze ons (Lowlands Tactical) weten te krijgen.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Circa 600 man met WARSAW Pact wapens in het noorden van het eiland.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Circa 1000 GREENFOR die willekeurige doelen in het noorden van het eiland gaan pogen in te nemen.<br/>
"]];
