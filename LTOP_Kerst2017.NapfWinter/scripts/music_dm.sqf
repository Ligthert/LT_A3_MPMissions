sleep 20;

while {alive speaker1} do {
  [speaker1,["dm",500,1]] remoteExec ["say3D"];
  sleep 245;
  sleep (random 60);
};
