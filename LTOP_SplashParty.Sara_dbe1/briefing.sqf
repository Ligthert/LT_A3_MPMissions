// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
De missie heeft de volgende doelen en in deze volgorde:<br/>
1) Het veilig stellen van de steden <marker name='obj1_cayo'>Cayo</marker> en <marker name='obj1_tiberia'>Tiberia</marker><br/>
<br/>
2) <marker name='obj2'>In dit gebied</marker> is een artillery peloton actief wat onze troepen aan het teisteren is. Schakel dit peloton uit.<br/>
<br/>
3) <marker name='obj3'>Doleres</marker> is op dit moment 1 grote chokepoint voor onze troepen. Met het <marker name='note_mines'>mijnenveld</marker> ten noorden daarvan is bijna onmogelijk voor ons om dit dorp aan te vallen en er doorheen te breken. Daarom vragen wij jullie om dit te doen!<br/>
<br/>
4) Als tenslotte de patstelling in <marker name='obj3'>Doleres</marker> in is genomen en je hebt nog troepen die voor jou kunnen vechten, dan dient niet <marker name='obj4'>Ortega</marker> ingenomen te worden, maar de herbevoorrading. In deze stad zijn voertuigen met voorraden van deze rebellen. Vernietig deze en met de voorraden er doorheen zover van huis trekken zij zich vanzelf wel terug!<br/>
<br/>
<br/>
Let op!!!:<br/>
- Deze doelen in deze volgorde hanteren.<br/>
- Er is een truck voor BCRs, hou deze heel en op een veilige afstand van enig conflict.<br/>
- De MAT-boys hebben nieuwe speeltjes, laat ze er zuinig mee zijn, wanneer onze voorraad op is, dan is het op.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Na jaren kei harde burger oorlog hebben de rebellen (Sahrani Liberation Army, verder afgekort als SLA) het noorden van Sahrani en <marker name='main_ao'>een groot gedeelte</marker> van Zuid-Sahrani in handen. <marker name='note_sierremadre'>De gebergte van Sierra Madre</marker> vorm hierbij een enorme natuurlijke obstakel wat in ons voordeel werkt. Vanwege het belang van het behouden van het vliegveld is alles ten noorden van Sierra Madre met moeite nog van ons, inclussief de hoofdstad Paraiso. <marker name='note_corazol'>Corazol</marker> is in handen van de rebellen samen met steden zoals <marker name='obj4'>Ortega</marker> en <marker name='obj1_cayo'>Cayo</marker><br/>
<br/>
<font size='18'>Vijandelijke eenheden</font><br/>
De vijanden zijn slecht getrained, maar in grote getalen. Ze bezitten de gebruikelijke WARSAW PACT wapens. Naast small-arms fire bezitten ze de nodige zware anti-tank, technicals en enkele IFVs. Onderschat de vijand niet. Zij zijn zover gekomen met een reden.<br/>
<br/>
"]];


// notes_mines

// Briefing
// geen vector
// andere MAT wapens
