// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","<br/>
Het is simpel, heel erg simpel:<br/>
- <marker name='obj1'>Ga de brug over</marker>, mogelijk is hier weerstand.<br/>
- Controlleer <marker name='obj21'>deze</marker> <marker name='obj22'>twee locaties</marker> voor eventuele outposts, zuiver deze.<br/>
- <marker name='obj3'>Zuiver deze bevoorradingspost</marker>.<br/>
- <marker name='obj4'>Vorm een hinderlaag tegen de troepen die per transport verplaatst worden</marker>.<br/>
- Een strategische filosoof is <marker name='obj5'>in deze mongroven</marker> de asceet aan het uithangen, genoeg lessen voor vandaag.<br/>"]];

_sit = player createDiaryRecord ["diary", ["Situation","<br/>
De situatie is shit, het is aan ons om het te ontfucken!<br/>
<br/>
<font size='18'>ENEMY FORCES</font><br/>
Kleine 100 man aan ongetrained rebellen de gebruikelijke Russische wapen.<br/>
<br/>
<font size='18'>FRIENDLY FORCES</font><br/>
Alleen onszelf, maar ook wat artillerie ter ondersteuning."]];
