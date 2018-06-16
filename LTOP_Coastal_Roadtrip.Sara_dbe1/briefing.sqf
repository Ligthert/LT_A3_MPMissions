// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The objective is simple:<br/>
Primary Objective: <marker name='obj1'>Get the boats, go home...</marker><br/>
Secundary Objectives: <marker name='obj2'>Destroy an ammo-cache</marker> and <marker name='obj3'>Finish of a high ranking officer in his home.</marker><br/>"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
The situation is shit. We got stuck behind enemy lines with our dinky toys and we need to get back home ASAP! We can't push through <marker name='city_corazol'>Corazol</marker>, because that would be suicide. The only option is grab a few boats that are Hunapu.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
WARSAW Pact weapons. Either small arms fire, techies and the occasional IFV. Be warned.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Us and only us! That and some arty and a CAS.
"]];
