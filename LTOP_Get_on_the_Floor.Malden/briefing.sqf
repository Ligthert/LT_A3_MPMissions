// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Onze primaire taak is thuiskomen. Dit kan op verschillende manieren gebeuren.<br/>
<br/>
- Observeer <marker name='obj1'>deze kleine FOB</marker> en probeer de voertuigen te confisqueren om daarmee sneller over het eiland te reizen.<br/>
- Reis naar <marker name='obj2'>deze kleine militaire basis</marker> en neem de helicopter die daar (altijd) stond om thuis te komen.<br/>
<br/>
<br/>
Mag dit geen vruchten afwerpen, dan zijn is er nog de volgende optie. In het geval van nood wanneer er geen veilige manieren is om te ontsnappen, dan zijn er deaddrops op het eiland met informatie met hoe we hier weg kunnen komen.<br/>
- Reis af <marker name='obj3'>naar onze oude basis</marker> en vindt vervoer <marker name='desto'>om naar de overkant </marker> te komen. Eenmaal aangekomen dan zijn er twee potentiele havens (<marker name='obj4'>hier</marker> en <marker name='obj5'>hier</marker>) waar er mogelijke ontsnappingsmogelijkheden zijn.<br/>
- Mag dit niks opleveren, dan <marker name='obj6'>is er een deaddrop in Chapoi in het kerkhof</marker> wat gegarandeerd ons een weg naar huis opleverd.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Recentelijk hebben de Russen ons uit Malden getrapt en wij zijn als laatste over. Zij weten dat, onze generaals weten dat en... wij weten dat? Het hele eiland is in handen van Russen en wij moeten een weg naar huis vinden met welk vervoersmiddel dan ook.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Circa 100 man met Standaard Warsaw-pact wapens en grondvoertuigen.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
N.V.T.
"]];
