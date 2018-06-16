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
*** Insert mission credits here. ***
<br/>
Template door Sacha Ligthert
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","<br/>Bij het afsluiten van de missie moet de admin SERVER SAVE AND EXIT indrukken!"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
- De eerste prioriteit is de kolonel verantwoordelijk van de bezetting van Everon uitschakelen. <marker name='obj1'>Zoals gebruikelijk zal de beste man achter zijn computer zitten in de ATC op in de luchthaven.</marker> schakel hem uit en ons werk wordt een stuk makkerlijker.<br/>
- <marker name='obj2'>Jat zijn auto met high-tec gear en een heleboel informatie</marker> en <marker name='obj3'>breng deze naar de ophaal punt</marker> zodat een van onze heli's hem kan oppikken en af te leveren bij wat ingeneurs.<br/>
- <marker name='obj4'>Maak een QRF helicopter onschadelijk...</marker> Het scheelt weer gezeik als jullie weer gezien worden.<br/>
- Onze Electronic Warfare Officers hebben <marker name='obj5'>een serie van Tungushka's gesignaleerd</marker>, taak is om deze onschadelijk te maken.<br/>
- <marker name='obj6'>Deze zee en lucht radar</marker> kan ons leven nog wel eens ontzettend kut maken. You know the drill.<br/>
- Om ons werk helemaal makkelijk te maken straks wordt het tijd <marker name='obj7'>de vehicle pool</marker> uit te schakelen. Dit is een eenvoudige klus (hoop ik).<br/>
- <marker name='obj8'>De klootzak Montegnac heeft vele mensen ongelukkig gemaakt met een bullshit dieet  en dit kunnen we niet accepteren. Blaas zijn twee restaurants op en laat het waarschuwing zijn....</marker><br/>
<br/>
<br/>
<marker name='refil'>Gelukkig voor jullie hebben wat meuk achter gelaten in een bos ergens waar je extra munitie en explosieven.</marker> Als je ergens een tekort aan hebt, dan kan je dit hier aanvullen. You'll thank me later."]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
De Russische VDV 78 heeft Everon ingenomen. En het is onze taak om deze in te nemen. We beginnen met een campagne van terreur door zoveel mogelijk schade aan te brengen alvorens we de hoofd macht erin de boel laten huishouden.<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Een battaljon of 2 aan Russische infanterie met de nodige aan hardware.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Eigenlijk alleen wij en wat arty.
"]];

// ====================================================================================
