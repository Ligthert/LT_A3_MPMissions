// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The objective is simple:<br/>
1) Work your way through <marker name='DMZ'>The Great DMZ</marker><br/>
2) Arrest or Neutrilize overseeing <marker name='obj2'>commander Mario Fernandez in his temporary outpost</marker>.<br/>
3) <marker name='respawn_west'>Get back home...</marker><br/>"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
The situation in Sahrani is at a stalemate dividing the great city of Corazol<br/>
<br/>
To the north is in hands of the Sahrani Liberation Army there to create a democratic state under supreme rule<br/>
<br/>
To the south it is the Royal Sahrani Army aided by US forces (us) that also want to create a democratic supreme, but at least we get some oil out of this<br/>
<br/>
The DMZ is no-mans-land between the two warring parties and while there is a truce for the time being, the north will shoot at anything that enters unless decleared earlier.<br/>
This makes it harder for us to push in ground forces into the Northern Sahrani<br/>
...<br/>
This is where you come in!"]];


// MARIO FERNANDEZ
