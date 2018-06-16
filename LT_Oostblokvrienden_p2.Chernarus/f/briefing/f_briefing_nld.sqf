// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// NOTES: Checklist
// The code below creates a checklist of notes

_ckl = player createDiaryRecord ["diary", ["Checklist","<br/>
<b>De PC/GC:</b><br/>
- Is er een 2ic?<br/>
- Is de intentie van de missie duidelijk?<br/>
- Zijn de stappen en de reis nodig duidelijk?<br/>
- Zijn de benodigde assets aanwezig<br/>
- Kunnen al deze assets benaderd worden<br/>
- Kan de reis van A naar B veilig gemaakt worden en wat zijn de gevaren?<br/>
- Is er een ERV?<br/>
- Is dit gecommuniceerd?<br/>
<br/>
<br/>
<b>De VTL:</b><br/>
- Doen de radios van de groepsleden het (Radio check)?<br/>
- Doet de long-range radio het?<br/>
"]];


// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Missie door Sacha Ligthert<br/>
<br/>
Template door Sacha Ligthert<br/>
<br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Alles zou als het goed is out of the box moeten werken. Wellicht een paar units de init geven dat ze niet gaan bukken.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Commander's intent is om het vliegveld van Balota in te nemen. Dit heeft prioriteit boven alles.<br/>
<br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Volg de weg richting het oosten en zuiver de stellingen.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Er staat ARTY stand-by ter ondersteuning.<br/>
Er zijn twee CV-90 ter ondersteuning, deze dienen de infantrie te ondersteunen met het zuiveren. Zij mogen enkel bunkers en andere voertuigen uitschakelen.<br/>
<br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
De CV-90s dienen deze slag te overleven.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
- <marker name='obj1'>Zuiver Kamenko</marker><br/>
- <marker name='obj2'>Zuiver Komarovo</marker><br/>
- <marker name='obj3'>Neem Balota airfield in</marker><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
De situatie is gespannen. Na het uitschakelen van het lucht afweer geschut is NAPA toch wat zenuwachtig geworden en zijn hun troepen in het zuiden aan het versterken. Deze troepen opbouw is duidelijk zichtbaar.<br/>
<br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The enemy is mostly infantrie, but have their fair share of armoured targets. Their weapons include:<br/>
- AKs, RPGs, PKPs<br/>
- BMPs and T-34s<br/>
- GPG and .50 CAL<br/>
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
For now we only have arty standing by.
"]];

// ====================================================================================