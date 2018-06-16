sleep 30;

while {alive myRadio1} do {
  [myRadio1,["ds",500,1]] remoteExec ["say3D"];
  sleep 256;
  sleep (random 60);
};
