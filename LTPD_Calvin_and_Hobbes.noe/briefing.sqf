// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Create a diversion by assaulting and clearing <marker name='obj1'>a regional FOB</marker>.<br/>
- Hold the base while friendly units escape from the area.
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
In order for friendlies to evacuate the island we need to create a diversion. We will be doing this by assaulting a local FOB. This should provide enough distraction to allow friendlies to escape from the island. We thank you for sacrifing your life so our friends may live and maaaaaaybe fight another day.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
1 Russian battalion with all the weapons and toys every kid with coca cola would like to have.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Basically it is us and the weapons we have on us. We can probabrly scrounge some weapons and equipment from the enemy, but we might not have the time for this.
"]];
