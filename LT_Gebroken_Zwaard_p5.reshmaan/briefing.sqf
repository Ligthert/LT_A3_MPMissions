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

if (serverCommandAvailable "#kick" or getPlayerUID player == "76561197972132272" or getPlayerUID player == "76561198023151588" or getPlayerUID player == "76561197972110272") then {

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
Missie door Sacha Ligthert
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
Spastic Civ Veh module kan nog wel eens voertuigen in andere voertuigen spawnen. Opschonen!"]];

// ====================================================================================


// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
The taskes for tonight are easy. In one foul swoop:<br/>
- <marker name='obj1'>Destroy an ammo cache</marker><br/>
- <marker name='obj2'>Clear a building occupied by insurgents</marker><br/>
- <marker name='obj3'>Search and Clear this compound for hostile activity</marker><br/>
- <marker name='obj4'>Sabotage the vehicle pool</marker><br/>
- <marker name='obj5'>Shutdown an IED factory</marker><br/>
- <marker name='obj6'>Halt a training and recruitment center</marker><br/>
<br/>
<br/>
You are free to do this in random order with any assets available.<br/>
<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Like stated before. Only insurgents remain and we are going to whipe them out in one night. Gear up for some fun, because lead will fly!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
They are highly trained and higly motivated. They shoot straight and they aim to kill. So proceed accordingly.<br/>
<br/>
The still carry WarsawPact weaponry like AK's, PKM's, RPG's, Strela, zsu's and the occasional snipre. But like stated earlier: be very careful!
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
- US!<br/>
- A UAV<br/>
- Some Arty on standby<br/>
- Transport on standby<br/>
"]];

// ====================================================================================
