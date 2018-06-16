// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Verzwak de rebellen leger op Lingor!<br/>
<br/>
- <marker name='obj1'>These hangers</marker> are loaded with vehicles that aid the rebels in their day to day business. Deal with them.<br/>
- Threatening our pidgeoncarriers, <marker name='obj2'>this flak tower</marker> (#22 on Lingor) is the worst and need disabling.<br/>
- There are coastal defences that will fuck up our parada. Since (((<marker name='obj3'>they</marker>))) also double as artillery, so they are a huge threat.<br/>
- <marker name='obj4'>This outpost</marker> is a threat to our zepplin activities. Without our zepplins we will have a harder time to deal with the rebels.<br/>
- In the city of Fatasmo, <marker name='obj5'>assassinate the regional commander</marker>. Make your life easier. Kill somebody today!<br/>
- Finally, if you have the time and chance, <marker name='obj6'>check out this compound</marker> and see if there is anything dodgy.<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
We are dealing with some rebels from Lingor. They are hold up on this island and need cleaning out.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
~200 infantry with WARSAW PACT weaponry are on the island. Possible technicals and trucks to aid their transport.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Other than us, none.
"]];

if (player == basl) then {
  _respawn = player createDiaryRecord ["diary", ["Update respawn","<execute expression=""'respawn_west' setMarkerPos (getPos player);"">Move Respawn to my Pos</execute>."]];
};
