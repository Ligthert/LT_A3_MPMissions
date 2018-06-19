// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
De taken zijn simpel:<br/>
<br/>
* <marker name='obj1'>Neem een militair basis over</marker>: Deze basis ten westen van <marker name='cqb_camara'>de stad Camara</marker> huist meerdere voertuigen en voorraden volgens de laatste intel verkregen van postduiven. Het is aan ons om deze of te vernietigen of te gebruiken bij het heroveren van deze eiland.<br/>
* <marker name='obj2'>Herover deze kleine airfield</marker>: Om de distributie van voedsel en porno te bevorderen ( en misschien wapens en munitie ) is dit airfieldje wel handig. Neem deze in... voor hentai weebshit.<br/>
* <marker name='obj3'>Vind een drugslab</marker>: Het vermoeden is dat er een drugslab en plantage is in deze contreien, controlleer de nabijgelegen gebouwen voor een lab en markeer deze voor latere vernietiging.<br/>
* <marker name='obj4'>Bevrijd een journalist</marker>: Deze stakker vond het nodig om naar schubbekutteveen in sint-fuckistan gaan om inspiratie op te doen voor een magazine over Lesbische Dans-therapie. Zorg dat ie bevrijd wordt en vertel hem dat er een boot is ten ooste van de gevangenis die op hem wacht om hem weer naar zijn socialistische dystopie te brengen.<br/>
<br/>
Verder zijn er secundaire opgaven:<br/>
- Zuiver de steden van rebellen<br/>
- Vind een mortar gunner die jullie leven zuurmaakt<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Het <marker name='IslaVixena'>schiereiland van Isla Vixena</marker> heeft nog de laatste groep rebellen. Zij zijn hard door jaren van training en spelen vies om te winnen.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Circa 200 man met WARSAWPACT-type wapens en meerdere voertuigen waaronder trucks en technicals. Mogelijk nog een helicopter.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
N.V.T.
"]];

if (player == oco) then {
  _opfor = player createDiaryRecord ["diary", ["LEES DIT!","Als jij dit leest, dan ben jij de OPFOR commander die het leven van de spelers zuur moet maken. Je kan dit met de volgende middelen doen:<br/>
 * In de ACE self-interact menu onder Lowlands Tactical kan je 1 mortar strike aanvragen. Vraag dit aan, een kaart verschijnt en klik 1 keer op de locatie waar een mortar moet landen. Dit kan je eens elke 10 minuten na het laatste schot doen. Voorwaarde is wel dat Aziz Light achter z'n mortar zit en nog leeft.<br/>
 * In de ACE self-interact menu onder Lowlands Tactical kan je 1 unit 400m buiten het bereik van spelers spawnen. Dit kan je eens per 15 minuten doen om een beetje first-hand idee te krijgen wat er speelt en wat de spelers doen. Als je dood gaat dan ga je weer terug in je eigen lichaam, anders is de de actie-menu met KILL YOURSELF om terug te gaan.<br/>
 * Je kan enkele units aansturen doormiddel van High Command. Als je op de kaart kijkt zie je alle friendly units en vijandige als ze weten waar ze zijn. Om doormiddel van HC units aan te sturen druk op CTRL+SPACE, ga naar de kaart selecteer units (drag 'n drop) en met de muis plaats je een waypoint dmv het actie menu. Je kan met shift en met rechter muisknoppen en shit waypoints er aan toevoegen, bewerken en verplaatsen. Lees de documentatie op de Biki terwijl iedereen nu aan het briefen is.<br/>
<br/>
Hoewel alles infanterie is volgens HC kan je onderscheid maken tussen de verschillende eenheden door te kijken naar de rangen van de leider:<br/>
* Sgt: Een vuurteam van 4-6 units<br/>
* Cpt: Een technical<br/>
* Col: Een helicopter (want fuck spelers)<br/>
<br/>
 <br/>
 Andere dingen:<br/>
 - Jouw locatie (aangegeven met de ION PMC vlag) wordt om de minuut geupdate. Dus de vijand weet waar je zit. Gebruik je fijne auto om te ontsnappen.<br/>
 - Als je dood gaat, respawn niet, maar slot als BLUFOR en vecht mee tegen de rebel menace!<br/>
 Veel plezier alvast!"]];
};

if (player == basl) then {
  _respawn = player createDiaryRecord ["diary", ["Update respawn","<execute expression=""'respawn_west' setMarkerPos (getPos player);"">Move Respawn to my Pos</execute>."]];
};
