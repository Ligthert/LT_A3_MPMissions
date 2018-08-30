// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Kameraden! Het is al heel lang zo dat wij niet onschuldig een rebellenleger kunnen zijn zonder dat de tyranische overheid ons arresteerd of erger; doodschiet. Omdat wij met steeds minder en minder zijn wordt het tijd om onze broers en transgender-zussen bevrijden van <marker name='obj6'>een zwaar bewaakte gevangenis</marker>.<br/>
<br/>
Omdat deze verdedigt is met zwaar materieel om alles wat over land rijd met de grond gelijk te maken moeten wij een aanvals helicopter jatten van <marker name='obj5'>de ter zuiden gelegen luchtbasis</marker>.<br/>
<br/>
Omdat deze luchtbasis wordt verdedigt door materieel wat in alles gaten kan schieten moeten jullie oude bepantserde voertuigen jatten van <marker name='obj7'>bewaakte voertuigen opslag</marker>.<br/>
<br/>
Omdat deze opslag goed wordt verdedigt door heleboel mensen met heleboel wapens hebben wij voertuigen nodig die de nodige vuurkracht kan uit delen om alles te voet met te doden. Deze kunnen we vinden in <marker name='obj3'>een licht bewaakte voertuig opslag</marker>.<br/>
<br/>
Omdat deze voertuigen zeer waarschijnlijk geen brandstof zullen hebben moet er brandstof opgehaald worden bij <marker name='obj4'>een nabijgelegen pompstation</marker>. Daar is een fueltruck die banden mist, dus haal deze op en neem wat reservebanden mee in 1 van de voertuigen. Het kan zijn dat je de weg van en er naar toe moet veiligstellen voordat je daar veilig kan rijden.<br/>
<br/>
Omdat de vijand bewapend is en wij amper moeten wij <marker name='obj1'>patrouilles</marker> <marker name='obj2'>overvallen</marker> en hun wapens looten.<br/>
<br/>
Omdat het ergens anders moeten wij er naar toe lopen.<br/>
"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];


if (player == basl) then {
  _respawn = player createDiaryRecord ["diary", ["Update respawn","<execute expression=""'respawn_guerrila' setMarkerPos (getPos player);"">Move Respawn to my Pos</execute>."]];
};
