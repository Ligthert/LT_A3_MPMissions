// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

// 1 2 4 6 7 8

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
De taken zijn simpel:
- <marker name='obj1'>Het industrie terrein van Victorin Oil Company</marker> heeft een voorraad narcotica opgeslagen in kratten. Verbrand $250.000.000 aan straat waarden hier van.<br/>
- <marker name='obj2'>In dit stulpje</marker> woont een luitenant van de kartels genaamd Hohepa Duvuduvukulu. De kartels zullen aanzienljk verzwakt worden als deze wordt uitgeschakeld.<br/>
- <marker name='obj4'>In deze loods</marker> is intel te vinden over de omgeving. Steel deze!<br/>
- <marker name='obj6'>Op deze heuveltop</marker> hebben de kartels een kleine basis opgezet wat zijn gebruiken om hun invloed over Lingor te vergroten. Verwacht weerstand, maar dit moet jullie niet onthouden om te laten zien wat een IMF lening kan doen.<br/>
- <marker name='obj7'>Dit dorp huist voor een groot deel de mankracht achter de kartels.</marker> Gezien al voor lange tijd geen huur betaald is worden jullie vriendelijk verzocht de inwoners vriendelijk te ontruimen.<br/>
- <marker name='obj8'>In deze compound</marker> leeft de vehicle pool van het kartel. Gezien er geen belasting betaald is over de voertuigen dan kan deze... onschadelijk gemaakt worden.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
De drugs kartellen hebben Lingor in hun grip en dankzij een injectie van de IMF zijn zij in staat om cheap-ass PMC units het gebied in te sturen om de boel te ontfucken. Dit zijn wij. Onze taak is om het leven van de locale drugs kartels zuur te maken.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
De vijand is of wat rebellen tot voormalige militairen van Lingor en buitenlandse strijders.
De wapen verschillen maar zijn over het algemeen 5.56 met varianten daarop.
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Alleen ons en de zegen van de Lingoriaanse overheid!
"]];
