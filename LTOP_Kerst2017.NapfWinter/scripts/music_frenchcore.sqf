sleep 10;

while {alive speaker2} do {
  [speaker2,["frenchcore",100,1]] remoteExec ["say3D",0,true];
  sleep 4700;
};
