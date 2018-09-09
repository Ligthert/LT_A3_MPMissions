// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>Travel to <marker name='loc_morada'>the shitty village of Morada</marker> and <marker name='ao'>search the area</marker> for the president. Rescue him and bring him back safely!"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
<font size='18'>Situation</font><br/>
The president has been kidnapped right under our noses by cheap rebel forces! And the presidential security detail is holding us responsible for this for some reason... ( They are tasked with keeping the poor man secure to start with...)<br/>
<br/>
Anyway, hostage takers (Sons of Kohral) announced via a webcast on Twitch.TV that they will execute the president at 10:30 and its on us to rescue him!<br/> Because we are the troops closes to them!<br/>
<br/>
We know that we are the troops near by because we activated the president's hidden anal probe that sends us his location at any time!<br/>
"]];
