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
Missie door Sacha Ligthert voor Lowlands Tactical.
<br/><br/>
Template door Sacha Ligthert
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Waar je misschien op moet letten is dat de weapens van de MG nesten en roadblocks niet bemand zijn.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Obstakels die een bruggehoofd in de weg kunnen zitten uit te schakelen. Dit houdt in eventuele verdedigingswerken en anti-luchtafweer geschut.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Gebruik het bos om er doorheen te manouvreren.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Geen vuur ondersteuning in dit fase beschikbaar.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
N.V.T.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Vernietig verdedigingswerken om een bruggehoofd makkelijker te maken.<br/><br/>
- Zoek en vernietig lucht afweer geschut <marker name='AA'>ten noorden van de kust</marker>.<br/>
- Zoek en vernietig <marker name='defences'>verdedigingswerken rond de kust</marker>.<br/>
- Zuiver de wegversperingen om en rond het dorp. Niet het dorp, dit gebeurd later. (Optioneel)<br/>
<br/><br/><br/>
( Niet dood gaan. )
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Het is een bosrijke omgeving wat in jullie voordeel gebruikt kan worden, maar ook in ons nadeel.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Licht uitgeruste infanterie met RPG en AK(M)s.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
1 Peloton van Lowlands Tactical met standaard uitrusting.
"]];

// ====================================================================================