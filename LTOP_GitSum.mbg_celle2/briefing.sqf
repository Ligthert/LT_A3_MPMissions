// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The mission is simple:<br/>
- Cross the river and <marker name='obj1'>destroy two pieces of rocket artillery</marker>. They are somewhere in the town. Intel is unsure if they are active or not.<br/>
- Head east and <marker name='obj2'>find and destroy fuel trucks</marker>.<br/>
- Once done, <marker name='obj3'>head into Celle then capture and hold the building-site which has been repurposed as a temporary HQ</marker>.<br/>
- Once you see A-10C's flying by and tanks taking up positions on the norther riverbank <marker name='obj4'>get into the remaining vehicles and  make your way to the exfil.</marker>"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
The Russians are retreating, but still have a strong hold on the everything  in the southern part of Celle2. Your task is to be the diversion while our main taskforce will do some damage in the southwest. Once they are done the will assist you.<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Typical Russian weapons and vehicles. Mostly infantry.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Us. Arty and Heli standing by.
"]];
