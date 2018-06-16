// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

 _mis = player createDiaryRecord ["diary", ["Mission","<br/>
- <marker name='obj1'>Clear this shitty village</marker> so we can camp an important MSR.<br/>
- <marker name='obj2'>Damage the Counter Artillary pieces</marker> so our life will be less of a shithole.. and we can arty them...<br/>
- <marker name='obj3'>Destroy a weapons-cache</marker> because we like explosions!<br/>
- <marker name='obj4'>Destroy an airborne asset!</marker> Because why not? :)
"]];

// _sit = player createDiaryRecord ["diary", ["Situation","<br/>
// *** Insert general information about the situation here.***<br/>
// <br/>
// <font size='18'>ENEMY FORCES</font><br/>
// *** Insert information about enemy forces here.***<br/>
// <br/>
// <font size='18'>FRIENDLY FORCES</font><br/>
// *** Insert information about friendly forces here.***
// "]];
