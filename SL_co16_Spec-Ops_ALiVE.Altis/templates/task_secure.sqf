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

template_taskSecure = [

[["O_officer_F"],"%1 reports that there is a small ammo depot to resupply CSAT forces in the vicinity. It is located in the vicinity of %3.<br/><br/>Clear it and destroy any assets you may find.","Secure Ammo Depot","Secure Ammo Depot",0],

[["O_recon_JTAC_F"],"%1 has sighted an automated outpost of CSAT near %3. Investigate and take disable the outpost.","Secure Outpost","Secure Outpost",1],

[["O_Story_Colonel_F"],"CSAT officers tend to have private parties out in the open. There next party is being held now %4 of %3.<br/><br/>Pay them a visit.","Disrupt Party","Disrupt Party",2],

[["O_Story_CEO_F"],"A snipers nest has been sighted %3 of %4. They could be a problem in the long run, take care of them.","Eliminate Snipers","Eliminate Snipers",3],

[["O_soldier_UAV_F"],"%1 reports a CSAT has a small station for resupply and spare parts of CSAT vehicles in the vicinity of %3. Disrupt their operations.","Secure Vehicle Resupply","Secure Vehicle Resupply",4]

];
