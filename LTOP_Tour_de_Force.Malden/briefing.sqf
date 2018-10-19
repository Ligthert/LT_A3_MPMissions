// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Om veilig weg te kunnen vliegen dienen wij eerst <marker name='obj1'>de SAM-site uit te schakelen</marker> die over het eiland waakt.<br/>
- Terwijl wij neerstortte raakte onze piloot gewond en is vermoedelijk met het vliegtuig neergestort. <marker name='obj2'>Doorzoek dit gebied hier</marker> en kijk of je hem nog kan redden.<br/>
- Om de vijand lichtelijk te frustreren, <marker name='obj3'>vernietig de voertuigen in deze fuel-depot</marker>. Kan geen kwaad. ;-)<br/>
- En om ontsnapping nog soepeler te laten lopen, <marker name='obj4'>saboteer de dit commando centrum</marker>. Geen prattende mensen is geen vechtende mensen.<br/>
- <marker name='obj5'>Pak een vliegtuig en vlieg naar huis!</marker> (PingWing mag niet vliegen.)<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>Na onze avontuur in Lingor overleefd te hebben worden wij dit keer per abuis boven uit de lucht gehaald. Tijd om er doorheen te vechten en weer naar huis te gaan. =)<br/>
<br/>
Nu nemen wij het op tegen de nieuwe overheid die de lokale bevolking gemilitariseerd heeft en in zet tegen eventuele indringers ( in dit geval onze vliegtuig). Door een rijke donatie door een internationale 1-mans illuminatie organisatie hebben zij goede wapens gekocht en alle leuke speeltjes."]];
