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
Scenario door Sacha Ligthert
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
Niks aan de hand. Alles zou het moeten doen.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
De intentie van de commandant is om de positie van NAPA te verzwakken door een munitie opslag en voertuigen uit te schakelen.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Verplaatsing zal door de bossen gaan om de kans op detectie te verkleinen
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
1 Artillerie peloton is beschikbaar met callsign SCHOORSTEEN EEN.
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
- <marker name='obj1'>Zoek de tijdelijke munitie opslag in Kozlovka</marker><br/>
- <marker name='obj2'>Vernietig de voertuigen pool in Nadezhdino</marker><br/>
- <marker name='obj3'>Check de situatie in Pulkovo</marker>. Observeer en rapporteer. In dien mogelijk, arty erop.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
De situatie is verslechtered ten opzichte van de voorgaande acties. Heel NAPA is hier en geven voldoende weerstand om ons bezig te houden.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
- Standaard WARSOW PACT wapens (AK,RPK,RPG)<br/>
- BRDM en BMP IFVs<br/>
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Vriendelijke eenheden zijn op dit moment bezig Chernogorsk te zuiveren en kunnen je niet bij staan hierin.
"]];

// ====================================================================================