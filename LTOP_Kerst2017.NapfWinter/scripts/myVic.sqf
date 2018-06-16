null = [myVic] execVM "AL_gravity\gravity.sqf";
"dangerzone" setMarkerPos (getPos myVic);
"dangerzone" setMarkerAlpha 0.6;
gezichten = "rood"; publicVariable "gezichten";
sleep 60;
null = [myVic] execVM "AL_gravity\gravity_ray.sqf";
sleep 60;
"dangerzone" setMarkerAlpha 0;
