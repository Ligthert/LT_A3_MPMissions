while {true} do {

	setTimeMultiplier 12;

	waitUntil {daytime >= 18};

	setTimeMultiplier 48;

	waitUntil {daytime <= 7 and daytime >= 6};

};