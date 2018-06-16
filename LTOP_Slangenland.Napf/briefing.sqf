// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Take and hold <marker name='obj1'>Schangen</marker>.<br/>
- Take inventory of the civilians.<br/>
- Once friendly tanks have passed, move up to <marker name='obj2'>Chatzbach</marker>.<br/>
- Set up a roadblock and prevent hostile units from assaulting friendlies in their flank.<br/>s
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Currently we are on the defensive, but there is a glimmer of hope now we are transforming our way into the offensive.<br/>
<br/>
Friendly forces will deploy from the airfield towards the northern airfield being held by Russian forces and capture it. Your task is to ensure their safe arrival and clear their way while keeping an eye out on the civilians by clearing Schangen. Once this is done, advance towards the town of Chatzbach and setup roadblocks to prevent the possible reinforcements from Muechenstein, Lochacker and Muttenz from assaulting our friendly allies in the flank.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Infantry and IFV from the Russian VDV31.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Us and any allies that will drop by to assist. :)
"]];
