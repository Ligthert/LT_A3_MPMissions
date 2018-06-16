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
Edzard van Zanten
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
handig kopje dit, geen idee wat ik ermee moet
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Hit and Run om Deckard Cain, leider locale SLA troepen, uit te schakelen.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Door middel van insertie via helicopters zuiveren we het gebied, verifieren Deckard Cain en keren terug naar de basis wederom met helicopter.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Korps artillerie is aanwezig, maar het gebruik wordt afgeraden.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Sniper team kan met een ATV een positie innemen om mogelijk aanwezige manpads uit te schakelen.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Door middel van insertie via helicopters zuiveren we het gebied, doden en verifieren de dood van Deckard Cain. Vervolgens keren we terug naar de basis wederom met helicopter.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Vijandelijke bevelhebber Deckard Cain is gespot, hij is een van de leiders van de "SLA rebellion forces".
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
De vijand lijkt licht bewapend, er bevinden zich QRF troepen ten noorden en ten zuiden van Objective 1.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Lowlands Tactical is goed bewapend en heeft een viertal helicopters voor de verassingsaanval.
"]];

// ====================================================================================