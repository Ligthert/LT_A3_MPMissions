// By Sacha Ligthert
// Mission templates for the task_destroy scenarios

template_taskDestroy = [

	[["O_APC_Tracked_02_AA_F"],"As you know the AAA units are spread evenly accross the island, making most air strikes near impossible. You are tasked with destroying them.<br/><br/> %1 reports there is such a unit %4 of %3.<br/> <br/> It is your task to search and destroy this object.","Destroy AAA","Destroy AAA",1],

	[["O_MBT_02_arty_F"],"%1 reports that an artillery position has been sighted on Altis<br/><br/>At the time we are unsure of the exact location, but we've marked the last known area.<br/><br/>Proceed to that location and then search and disable or destroy all the artillery pieces.","Destroy Artillery","Destroy Artillery",1],

	[["O_MBT_02_arty_F","O_MBT_02_arty_F"],"%1 reports that an artillery position has been sighted on Altis<br/><br/>At the time we are unsure of the exact location, but we've marked the last known area.<br/><br/>Proceed to that location and then search and disable or destroy all the artillery pieces.","Destroy Artillery","Destroy Artillery", 0],

	[["Land_PowerGenerator_F","Land_Radar_Small_F","Land_PowerGenerator_F"],"%1 reports that CSAT is building a secret prototype of advanced and sophisticated radar dome. It is imperative you destroy it before any test can be conducted.<br/><br/>Triangulation indicate that the radar installation is located somewhere in the area near %3.<br/><br/>Good hunting!","Destroy Radar Dome","Destroy Radar", 0],

	[["Land_Communication_F","Land_PowerGenerator_F","Land_TBox_F"],"We've had several reports from %1 that a source of radio transmissions has been found on the island. Our guess is that its near %3, but you have to go in yourself and see if you can find it.<br/><br/>When you do, destroy the antenna and any equipment associated with it.","Destroy Comms Center","Destroy Comms", 0],

	[["Land_TTowerBig_2_F","Land_PowerGenerator_F","Land_TBox_F"],"%1 reports that large quantities of CSAT radio traffic have been intercepted originating from the island of Altis. Triangulation indicate that the source is from an area near %3.<br/><br/>Your task is to search its origin and destroy all the components.","Destroy Comms Center","Destroy Comms", 0],

	[["O_Truck_03_ammo_F","O_Truck_03_covered_F","O_Truck_03_repair_F","O_Truck_03_fuel_F","O_Truck_03_medical_F"],"%1 spotted a group of supply trucks stored %4 of %3. While they don't carry anything vital to the war effort, this is however a target of oppertunity. Please destroy them at your earliest convenience.","Destroy supply trucks","Destroy supplytrucks", 0],

	[["O_Truck_02_Ammo_F","O_Truck_02_covered_F","O_Truck_02_transport_F","O_Truck_02_medical_F","O_Truck_02_fuel_F","O_Truck_02_box_F"],"Another recon team spotted a series of supply trucks parked in the vicinity of %3. Since this is a target of oppertunity, please destroy them at your earliest convenience.","Destroy supply trucks","Destroy supply trucks", 0]

];