// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The Primary goal is to <marker name='obj5'>clear the airfield</marker> of any hostile forces.<br/>
You your way there there are some secundairy targets:<br/>
- If you pass <marker name='obj1'>Lindwedel</marker> and <marker name='obj2'>Mellendorf</marker> take out targets of opportunity, but stick around to long.<br/>
- Clear the towns of <marker name='obj3'>Fuhrberg</marker> and <marker name='obj4'>the nearby petrol station</marker>. Try and keep something standing if you can.<br/>
<br/>
If possible, take on these tertiary targets:<br/>
- Clear <marker name='obj6'>Ovelgonne</marker>.<br/>
- Clear <marker name='obj7'>Hambuhren</marker>.<br/>
<br/>
Good hunting!
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Fellow Americans, we are going toe to toe with dem ruskies. The situation has escalated with the kraut that they are asking for our intervention in capturing back a prized airfield, that of Celle!<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
The enemy composition is as what you would expect:<br/>
A zerg rush of infantry<br/>
The occasional roadblock<br/>
Further east a lot more armor, consisting mostly out of T-72s. You will need to hit these bastards a multiple times before they pop. But a well aimed shot should knock out most of the crew.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Besides us, a little tank platoon there is the finest Arty standing by next to an excellent Apache helichopper!<br/>
A word of warning concerning the CAS, let it tail you, because these pesky ruskies have means of defeating these things.<br/>
"]];
