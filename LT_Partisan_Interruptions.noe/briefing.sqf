// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
The objectives are simple rout the enemy out of the forest east of <marker name='modrava'>Modrava</marker>, this is done by doing the following:<br/>
- <marker name='obj1'>Search for a hidden ammo-cache and clear the site so our demolition teams can take care of the charges.</marker><br/>
- <marker name='obj2'>Same here, search for a vehicle pool, secure it, dems will either confiscate or deny these assets.</marker><br/>
- <marker name='obj3'>Clear out this FOB that provides mortar support for the area</marker><br/>
- <marker name='obj4'>Make sure this forest is clear of enemies so we can start our siege of Modrava</marker>.<br/>
<br/>
Be aware, they are not so as forthcoming and bold during our last encounter. Take it slow and don't touch the vehicles."]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
After our last encounters the rebels have pulled west and have occupied the city of <marker name='modrava'>Modrava</marker> as a last stand.<br/>
<br/>
While this is all fine and dandy, the forests to the east are crawling with rebels. They have setup shop and made a new home for themselves while making it harder for us to take directly assault the shitty of Modrava. Your job is to rout them.
"]];
