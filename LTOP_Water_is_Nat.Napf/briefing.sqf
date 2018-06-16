// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- <marker name='obj1'>Stel alle 3</marker> <marker name='obj2'>de documenten</marker> <marker name='obj3'>veilig</marker>.<br/>
- Neem eventuele gevoelige hardware mee <marker name='obj4'>van de machineplaats</marker>.<br/>
<br/>
Meer informatie volgt zodra wij meer weten.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Om te voorkomen dat de staat Sahranic zichzelf in verlegenheid brengt aan de hand van een bombaanslag in Moskou is het aan ons om alle bewijs materialen te verduisteren. Het probleem is echter dat ze verstopt zijn. Gelukkig heeft onze inlichtingen diensten gevonden waar ze zijn, maar is niet in staat geweest om deze doucumenten te bemachten. Het is aan ons om deze documenten te bemachtigen en ervoor te zorgen dat dit niet aan het licht komt.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Er is een compagnie aan vrijheidsstrijders die ons hiermee willen chanteren aan de noordkust en een compagnie aan de westkust. Ze gebruiken de typische warsawpact wapens en zijn uitermate goed getrained.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Arty + Transport combat support
"]];
