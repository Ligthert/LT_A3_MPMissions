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
You have the following tasks:<br/>
1) <marker name='obj1'>Take out the Vehicle Pool in Farhannah.</marker> Do as much damage as possible.<br/>
2) Search for 2 or 3 camps in <marker name='patrolzone'>South West of Farhannah</marker> and destroy their assets and anybody guarding them.<br/>
<br/>
<br/>
Get to the choppah to board the plane for a HALO jump. <marker name='path1'>The course of the truck is marked by the blue line.</marker> Choose a nice LZ outside the AO and go for it.<br/>
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
The South Eastern area of Reshmaan Province is the new staging area of the militia. There is a vehicle pool and several other storage facilities in camps in the vicinity.
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
- Some Arty on standby<br/>
"]];

// ====================================================================================
