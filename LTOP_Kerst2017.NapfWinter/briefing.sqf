// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
De enige echte Kerstman heeft onsgevraagd kadootjes te geven aan de goede burgers van Napf. Hij betaald ons goed en heeft ons voorzien van het beste van het beste aan wapens en wagens! :D<br/>
<br/>
In verband met de strakke planning in volgorde:<br/>
<br/>
Reis af naar het <marker name='loc_hirsegg'>gezellige en pitoresque dorpje</marker> en geef de lokale burgers lieve kadootjes! :)<br/>
Ga vervolgens door <marker name='loc_treubsal'>dit rustieke plaatsje</marker> en <marker name='obj_ditch'>parkeer de vrachtwagen in de gemarkeerde binnenplaats</marker> en bewonder je arbeid van een afstandje! :)<br/>
Na afloop, <marker name='obj3'>klim op dit eeuwenoude UNESCO pand</marker> en steek een kaars aan voor de Kestman. De sterren zullen vanaf daar de weg wijzen naar jullie exfil.<br/>
<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
De kerstman heeft ons gevraagd zijn kadootjes af te leveren bij de lieve en aardige mensen van Napf. Ze zijn altijd een beetje moeilijk geweest over de Kerstman zijn aanwezigheid en de kadootjes die hij uitgeeft. Maar de laatste jaren zijn ze wat veller geworden en kunnen bijna als ongelovig beschouwd worden.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Onze ontvangers van kadootjes zijn goed uitgerust en zijn niet bang van ons, maar eerder wat ze achterhouden. Ze zijn met veel en hebben vrij goede wapens, maar weinig voertuigen, dus verwacht af en toe een verassing!<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Dat zijn wij! :D En onze onbreekbare voertuigen (met veeeelste kleine brandstof tanks)."]];
