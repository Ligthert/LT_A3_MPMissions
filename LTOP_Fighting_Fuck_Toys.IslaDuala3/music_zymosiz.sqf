sleep 10;

while {alive mySpeaker1} do {
  [mySpeaker1,["zymosiz",500,1]] remoteExec ["say3D"];
  sleep 270;
};
