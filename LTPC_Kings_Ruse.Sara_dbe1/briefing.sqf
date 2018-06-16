// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
- Retake the island of United Sahrani in the name of our King!<br/>
"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
So... We have limited assets. Limited gear. We have Insurgents everywhere either fighting us, recruiting our civilians or creating bomb factories. And to our north we have a full company of SLA running around like they own the place. This needs to stop! Make them stop! Here is $100 in budget and make it happen!<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
 - <marker name='ao_full_marker'>In the North</marker> the Sahrani Liberation Army holds most of this territory. With R.A.C.S being bled dry and with no support coming from the international community they seem to be in an impenetrable fortress.<br/>
 - Throughout Sahrani insurgents have setup cells, IED factories and started recruiting from the local population and train insurgents in order to topple the Kings government
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
- Just you basically. There is some combat support and you can catch a free ride to Sahrani North with a C130. But thats about it....
"]];
