// by Sacha Ligthert
// Goal: Template for assassination tasks

/* Format:
template_* = [
	[[classes],_description,_title,_marker_name],
	[[classes],_description,_title,_marker_name]
];

function format
[
	intel source SO_fnc_intelSource
	ingame-names (name) name
	Nearest location
	location azimut (text: north, n/w, etc) SO_fnc_deg2Compas
]

*/

template_taskSnipe = [

[["O_officer_F"],"%2 is an important officer for CSAT and takes care of parts of the island's CSAT defence. While normally he is somewhere safely tucked away in a base somewhere. %1 reports he is out in the field working on something.<br/><br/>%1 reports he is in the area %4 of %3, your task is take him out to make Altis a safer place for us all once the beachhead lands.","Assassinate officer","Assassinate officer"],

[["O_recon_JTAC_F"],"%1 reports a CSAT JTAC is practicing in the field %4 of %3. To make our job easier in the future, take him out.","Assassinate JTAC","Assassinate JTAC"],

[["O_Story_Colonel_F"],"%1 reports %2 is honouring Altis with a visit, which by itself is pretty rare. %1 he is %4 of %3 inspecting the troops and working on something.<br/><br/>I don't have to explain why and what to do?","Assassinate Colonel","Assassinate Colonel"],

[["O_Story_CEO_F"],"%2 is a CEO of a relativly large company on Altis doing logistics for the CSAT. He would do the same for us, but now he is a target for us<br/><br/>Take him out<br/><br/>%1 located him on business %4 of %3.","Assassinate CEO","Assassinate CEO"],

[["O_G_officer_F"],"%2 is an officer of the Guerilla faction alligned with CSAT. %1 located him %4 of %3 working on new plans.<br/><br/>Search for him and send the rest of the faction a message.<br/><br/>Deal with him!","Assassinate Guerilla Officer","Assassinate  Guerilla Officer"],

[["O_soldier_UAV_F"],"%1 reports a CSAT UAV officer called %2 sometimes goes out to watch the sky. %1 located him and and found him in an area %4 of %3. Since he is a highly trained officer and performs a vital roll it is imperative you take him out.","Assassinate UAV controller","Assassinate UAV controller"]

];
