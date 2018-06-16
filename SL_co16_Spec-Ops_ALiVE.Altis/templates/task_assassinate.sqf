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

template_taskAssassinate = [

	[["C_scientist_F"],"It came to the attention of %1 that a leading scientist is selling the search data on next-gen weapons to CSAT.<br/><br/>It is suggested he has gone into hiding in %3, but we cannot tell where precisely he has gone into hiding<br/><br/>It is up to you to find him and stop him","Assassinate scientist","Assassinate scientist"],

	[["C_journalist_F"],"%1 got wind of a journalist who has plans to sell Top-Secret NATO plans to a local newspaper.<br/><br/>As you can imagine this is all but desirable. So he must be stopped.<br/><br/>Currently he is held up in his home town of %3, but is likely hiding at friends. Go pay him a visit.","Assassinate WikiLeaks","Assassinate WikiLeaks"],

	[["C_Nikos_aged"],"A banker has frozen the assets the AAF forces. This has severyly crippled their organisation with result that the resistance is undermined by this.<br/><br/>While we are sorting the money end of this, it is up to you to set an example.<br/><br/>He is most likely still at his house somewhere in %3.<br/><br/>Go make a house-call.","Assassinate corrupt banker","Assassinate corrupt banker"],

	[["C_Nikos"],"While criminality on Altis isn't one of our concerns, %2 however is trading with CSAT supplying them with the much needed resources the require to keep a hold on Altis.<br/><br/>Assassinate him him from doing this ever again.<br/><br/>You will most likely find him in %3. Good hunting!","Assassinate criminal","Assassinate criminal"],

	[["C_Orestes"],"A biker is doing errands for CSAT and doing intel for them. The annoying prick should be stopped.<br/><br/>Take him out before this gets out of hand.<br/><br/>This sends a message to any other people willing to help CSAT.<br/><br/>He is most likely in his home in %3.","Assassinate biker","Assassinate biker"],

	[["Sheep_random_F"],"A lab near %3 created an intelligent mutant sheep which managed to escape on the account of being intelligent enough to bypass the security set-up by the scientist (leaving a mess in its wake).<br/><br/>We know it fled into the city somewhere, but have no idea where exactly.<br/><br/>Take it out before it wrecks any more havoc like it did on the way out of the lab.","Assassinate mutant sheep","Assassinate mutant sheep"],

	[["I_officer_F"],"%1 reports %2 is defecting to CSAT. Since he is important to the FAA and the resistance on Altis, it is up to you he doesn't.<br/><br/>Currently he is held up in %3.","Assassinate AAF officer","Assassinate AAF officer"],

	[["I_G_officer_F"],"A rebel faction has fractured and are now aiding CSAT. %2 is their leader currently in hiding in %3.<br/><br/>Take him out and his faction will resort back to fighting CSAT.","Assassinate FIA Officer","Assassinate FIA Officer"],

	[["I_Story_Colonel_F"],"%1 reports %2 is defecting to CSAT. Since he is important to the FAA and the resistance on Altis, it is up to you he doesn't.","Assassinate AAF Colonel","Assassinate AAF Colonel"],

	[["O_Story_Colonel_F"],"%1 reports a high ranking Colonel (%2), responsible for the defence of the island of Altis is visiting his mistress in %3. He usually does this with out any guards for some reason.<br/><br/>This is good news for us and bad news for him.<br/><br/>Because you are going to say hi!","Assassinate CSAT Colonel","Assassinate CSAT Colonel"],

	[["O_Story_CEO_F"],"There is a man called %2. And he is doing the logistics and providing supplies for CSAT in exchange for large sums of money. We wouldn't mind it if he worked for us.<br/><br/>But this isn't the case.<br/><br/>So you will have to kill him dead!<br/><br/>Visit one of his houses in %3, he will be there.","Assassinate corrupt CEO","Assassinate corrupt CEO"],

	[["O_G_officer_F"],"%1 reports %2 is defecting to CSAT. Since he is important to the FAA and the resistance on Altis, it is up to you he doesn't.<br/><br/>End him. He is most likely at his house in %3.","Assassinate FIA officer","Assassinate FIA officer"],

	[["B_G_officer_F"],"It had to happen! One of our own (%2) has defected and he needs to be brought in for a courtmarshal.<br/><br/>While the logistics of this is a pure hassle. So you'll have to do the sentencing yourselves.<br/><br/>You know what the verdict will be.<br/><br/>%1 reports he is holding up somewhere in %3 awaiting extraction.","Assassinate defector","Assassinate defector"]

];