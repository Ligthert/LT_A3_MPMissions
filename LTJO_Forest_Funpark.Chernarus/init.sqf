call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";
[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
De intentie is om het aantal vijandige eenheden in ons land terug te brengen. Dit doel moet behaald worden door het volgende uit te voeren:<br/>
1) <marker name='obj1'>Vernietig een ChDKZ munitie opslag in Pusta</marker>;<br/>
2) <marker name='obj2'>Neem zeldzaam apperatuur in Castle Rog terug van de ChDKZ</marker>;<br/>
3) <marker name='obj3'>Vernietig de Russische Vehicle Pool in Staroye</marker>;<br/>
4) <marker name='obj4'>'Arresteer' een Russische Generaal in Msta</marker>;"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>De situatie is op z'n best gezegd een ramp.<br/>
Eigenlijk alles ten noorden van onze mooie kustlijn of bezet door de communistische ChDKZ (Chernarussian Movement of the Red Star) en niks anders dan de communistische Russian Armed Forces<br/>
Alle steden in de omgeving en alle historische locaties zijn bezet. Wat het erger lijkt is alsof ze een cloning-facility ergens hebben, want ze weten alles goed te spammen met units.<br/>
<br/>
Als ze niet alle dorpen en historische locaties aan het bezetten zijn, dan zijn ze wel hinderlagen wel op aan het zetten of de wegen aan het spammen met voertuigen. Hou daar dus rekening mee met het maken van je plan.<br/>
<br/>
Waar de ChDKZ vrij belabberd schieten zijn de Russen aanzienlijk nauwkeuriger."]];
