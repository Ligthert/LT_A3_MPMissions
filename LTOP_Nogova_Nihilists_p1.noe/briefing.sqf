// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The task is simple: Disrupt the foreign oppressors.<br/>
<br/>
- Primary: <marker name='obj1'>Destroy a nearby studio used for propoganda purposes</marker>.<br/>
- Primary: <marker name='obj2'>Damage a local radiotower</marker>.<br/>
- Secundary: <marker name='obj3'>Press F to pay respects</marker>.<br/>
- Secundary: <marker name='obj4'>Disrupt a party of locals</marker>.<br/>
<br/>
Fly safe...
"]];

 _sit = player createDiaryRecord ["diary", ["Situation","<br/>Recentely Nogova was taken over by a troops loyal to ruskies. Yeah, long story short. We need to weaken their influence."]];
