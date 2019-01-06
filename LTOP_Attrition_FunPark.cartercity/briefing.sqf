// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_adm = player createDiaryRecord ["diary", ["Admin Notes","<br/>
The variable 'SPAWNDELAY' (set to 180) is the delay in seconds that spawns a new group and sends it to the most northern user. Getting smashed? Make the value higher. Going to fast? Lower it."]];

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Clean out <marker name='obj1'>the railyard</marker>. Resistance will be fierce and you will suffer many casualties. (Good luck, don't die)<br/>
- Search <marker name='obj2'>these blocks</marker> for weapons caches and destroy them. Blow the sky fucking high!<br/>
- Clean out the <marker name='obj3'>enemy HQ</marker> and carve them up!<br/>
- Finally, <marker name='obj4'>rout the enemy</marker> and get rid of these fuckers.<br/>

"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
Pecher is a shitstain on the map. Rebel forces have everything to our north and have it locked down. So we have that going.<br/>
Downside however is that they are shelling the city with mortar and artillery shells. So be safe!<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
4 platoons of enemy infantry and a lot arty<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Its just us! :-) (with friendlies to our west fighting in their sectors)<br/>
"]];
