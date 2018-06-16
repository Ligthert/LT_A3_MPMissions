// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
A high valued target, in our case a general of the Afghan army is holding up <marker name='obj1'>in a villa</marker>. It is your task to raid the villa and capture or kill the HVT.<br/>
<br/>
<marker name='obj1'>The villa</marker> is a small bastion, with a platoon guarding it and reinforments standing by in case of emergency. But a skilled team should be able to deal with this.<br/>
<br/>
You can approach this using different ways, either use the buggies for a stealthy approach or little birds for the guns blazing approach. <marker name='respawn_west'>Both conveniently situated at your base</marker>.<br/>
<br/>
Long story short: go forth and break stuff!
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
The raid will be at night with calm weather conditions. There is a small group guarding the villa where the general is staying with some reinforcements in case of emergencies in <marker name='reinf1'>the city</marker> south of the villa and amoured vehicles <marker name='reinf2'>west one town over</marker>.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
They are armed with the usual soviet weapons. Due to the status of the target the skills of the men are better than usual in terms of skills and equipment. So expect the worst.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Its just us. So do not die. You can can either head over there with either a buggy and take the slow approach or go in guns blazing with the little birds. Its up to you."]];
