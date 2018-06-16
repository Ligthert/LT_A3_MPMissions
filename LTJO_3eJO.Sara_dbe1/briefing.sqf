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

if (serverCommandAvailable "#kick" or getPlayerUID player == "76561197972132272" or getPlayerUID player == "76561198023151588" or getPlayerUID player == "76561197972110272" ) then {

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
Template door Sacha Ligthert<br/>
<br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Het kan zijn dat de knullige AI overal tegen aan rijd en zichzelf vast rijd in het bos. Help ze ff af en toe.<br/>
<br/>
Verder wil AI in gebouwen of op gebouwen er nog wel eens vanaf lopen en flauw vallen. Je kan ze via de Zeus ACE Medical Toggle Unconcious module weer wakker maken.<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
De doel van de commendant is om het noorden te zuiveren van rebelse elementen.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Verplaatsing zal of ter voet of als passagier in de DAFjes zijn tussen de verschillende doelen.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Artillerie is beschikbaar voor iedereen met een LR radio dmv het ALiVE Combat Support menu.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Ga niet dood.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
De opdrachten zijn simpel:<br/>
- Zuiver <marker name='obj1'>het rebelse bolwerk</marker> in Eponia.<br/>
- Vernietig <marker name='obj2v2'>de opslag depot aan de kust</marker>.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Na een maandenlange campagne zijn onze middelen en manschappen bijna uitgeput (tot op het punt dat we zelfs radios moesten lenen van de Duitsers en zijn gaan recruiteren op peuter- en basisscholen). M aar we hebben de Rebellen in het nou gedreven en we zijn er bijna. Enkel hun opslag locaties en hun laatste bolwerk in Eponia blijven over.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
De rebellen beschikken over <br/>
- Technicals (M2)<br/>
- RPG32 wapen systemen<br/>
- De Fort 221 wapensysteem<br/>
- MK20 LMG<br/>
<br/><br/>
Er zijn naar schatting nog maar 200 rebellen over. Het gevaar zit hem in dat ze op 1 hoop zijn en we door een pact met de Sahraneeze overheid geen Artie of lucht bombardementen uit mogen voeren op civiele gebouwen.<br/><br/>
Naar schatting zijn er nog een stuk of 12 technicals in bezit van de rebellen.<br/>
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
- Lowlands Tacticooool<br/>
- Dutch Lion Community<br/>
- 11AMB<br/>
- Wat yanks in artie op het vliegveld.<br/>
"]];

// ====================================================================================

_rds = player createDiaryRecord ["diary", ["Groepen en Radios","<br/>
Long en Short Range kanalen:<br/>
CC: LR Chan #3<br/>
<br/>
1e Peloton/Romeo -- LR Chan #1<br/>
Alpha: SR chan #2 - LT<br/>
Bravo: SR chan #3 - DLC<br/>
Charlie: SR chan #4 - 11AMB<br/>
<br/>
2e Peloton/Romeo -- LR Chan #2<br/>
Alpha: SR chan #5 - DLC<br/>
Bravo: SR chan #6 - 11AMB<br/>
Charlie: SR chan #7 - DLC<br/>
<br/><br/>
"]];
