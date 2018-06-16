// Spawn of the LHD Carrier
// this setPosASL [getposASL this select 0, getposASL this select 1, 0]; res = [this] execVM "CreateLHD.sqf";
if (isServer) then {
    _LHDspawnpoint = [getposasl LHD_Center select 0, getposasl LHD_Center select 1, 0];
    {
        _dummy = createVehicle [_x, _LHDspawnpoint, [], 0, "NONE"];
        _dummy setdir 270;
        _dummy setPos _LHDspawnpoint;
    } foreach ["Land_LHD_house_1","Land_LHD_house_2","Land_LHD_elev_R","Land_LHD_1","Land_LHD_2","Land_LHD_3","Land_LHD_4","Land_LHD_5","Land_LHD_6"];
};