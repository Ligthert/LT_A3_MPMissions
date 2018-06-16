[] spawn {
        while {true} do {
            {
                 if ((!(_x getVariable ["stage", false]))) then {
                    null = _x addAction ["<t color=""#66FFFF"">Repair/Flip</t>","repair.sqf",[_x],1,true,true];
                    _x setVariable ["stage", true, true];
                };
            }foreach vehicles;
            sleep 60;
        }
};