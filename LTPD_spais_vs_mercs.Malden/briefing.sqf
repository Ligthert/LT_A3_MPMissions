// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

if ( side player == west ) then {
  _mis = player createDiaryRecord ["diary", ["Mission","Jullie taak is simpel:<br/>
- Vernietig 3 van de 5 doelen bewaakt door mercs in binnen 30 minuten<br/>
<br/>
Na een korte bezoek aan de krat voor een NVG dan zijn jullie gewapend met:<br/>
- 1 x Glock-17 met een demper<br/>
- 3 x magazijnen<br/>
- 1 x IR strobe<br/>
- 1 x NVG (die je uit de crate moet halen)<br/>
<br/>
Zoals jullie kunnen inzien zijn jullie zwak, maar hebben middelen om ongezien jullie werk uit te voeren.<br/>
Jullie vijand is zwaar bepantserd en kan de omgeving zeer eenvoudig verlichten en jullie leven zuurmaken.<br/>
<br/>
Jullie taak is om bij de start van de missie ( mission start, safety off)  teleporten naar naar buiten de AO en dan erin te gaan.<br/>
Eenmaal een machine in zicht, dan dien je deze te saboteren dmv je actie menu. Dit duurt een minuutje.<br/>
<br/>
"]];
} else {
  _mis = player createDiaryRecord ["diary", ["Mission","Jullie taak is simpel:<br/>
- Bewaak de machines. De spionen winnen als zij 3 van 5 machines uitschakelen<br/>
<br/>
Jullie zijn zwaar bewapend met een sterke Assault Riffle, zaklamp, lichtkogels voor je underslung en handflares, maar geen NVG. Jullie vijand heeft 30 minuten de tijd om in deze duisternis deze machines uit te schakelen. Zij zijn licht bepakt en eenvoudig te doden, maar moeilijk te zien. Dus gebruik de eerder genoemde middelen om hun in het licht te brengen.<br/>
<br/>
Jullie taak begint bij de start van de missie (mission start, safety off) wanneer spionen de AO in trekken. Het duurt ze een minuutje om de machine te saboteren. Maar wees op je hoede. 3 van de 5 machines zijn voldoende!"]];
};
