// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

waitUntil {!isnil "f_var_debugMode"};

// ====================================================================================

// BRIEFING: ADMIN
// The following block of code executes only if the player is the current host
// it automatically includes a file which contains the appropriate briefing data.

if (serverCommandAvailable "#kick") then {

#include "f\briefing\f_briefing_admin.sqf"

};


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
Scenario door Sacha Ligthert<br/>
<br/>
Template door Sacha Ligthert
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Geen idee. Flikker met Zeus wat NAPA units neer hier en daar om de CV90 crew wat bezig te houden.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Het evacueren van de laatste burgers in het zuidelijke gedeelte van Zuid Zagoria.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Verplaatsing zal gaan via de wegen gemarkeerd met blauwe stipjes. Heen en terug.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Ter beschikking zijn:<br/>
- 2 x A-164 Whipe-Out (CAS)
- 1 x AH64D (CAS)
- 3 x Arty ( via ALiVE Combat Support )
- 3 x UAV (CAS)
- 2 x CV90 IFV
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Geen bijzonderheden.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Doel van dit scenario is om 4 over gebleven burgers na de escelatie van de oorlog in het oorlogs gebied op te halen. We hebben genoeg wapens in de lucht en op de grond, maar we moeten ze wel ophalen. En als we NAPA nog wat schade aan kunnen brengen in de tussen tijd, waarom niet?<br/>
<br/>
Er moeten de volgende burgers opgehaald worden:<br/>
- <marker name='obj1'>De leeraar</marker><br/>
- <marker name='obj2'>De priester</marker><br/>
- <marker name='obj3'>De rare man</marker><br/>
- <marker name='obj3'>De houthakker</marker><br/>
<br/>
<br/>
Er zijn drie UAV operators, deze dienen de hun backpack te droppen en een LR radio uit de crate bij de ATC pakken. Iedere UAV Operator dient zijn/haar voertuig aan te sturen.<br/>
<br/>
IVM met technische limitaties verschijnen units ~1KM voor de convoy op de grond.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
De meeste burgers zijn geevacueerd
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Er is naar intel een battaljon aan:<br/>
- Groepen met WARPACT wapens<br/>
- BRDM-*<br/>
- BMP1<br/>
- T-72<br/>
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
N.V.T. Druk elders.
"]];

// ====================================================================================
