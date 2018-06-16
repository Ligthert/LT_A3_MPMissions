sleep 20;

while {alive myTV1} do {
  [myTV1,["cky",500,1]] remoteExec ["say3D"];
  sleep 220;
  sleep (random 60);
};
