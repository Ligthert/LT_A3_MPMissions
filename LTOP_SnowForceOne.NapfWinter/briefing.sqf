// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The situation is pretty effed.<br/>
<br/>
We have Russians crawling out of our ass with all the hardware you need to rek our sphincters within a minute... <br/>
Then we have some fucking rebels that are supported by them that have a nice base of operation where they fuck with us throughout the region. This is fucken splendid!<br/>
<br/>
Time to end this insanity:<br/>
- <marker name='obj1'>Clear this camp and destroy any intel assets they may have</marker>, no exceptions.<br/>
- <marker name='obj2'>There is a vehicle pool in this suburban shithole</marker> and it would just love it if you left a few bricks amongst them.<br/>
<br/>
Fuck'em up...
<br/>"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
