// Executed only on server when mission is started. See initialization order (https://community.bistudio.com/wiki/Functions_Library_%28Arma_3%29#Initialization_Order) for details about when the script is exactly executed.

null = execVM "\lt_template_base\init\initServer.sqf";

{_x allowDamage false} foreach allPlayers;
nul = [ mbox,
        [
          ["Land_BagFence_01_long_green_F",36],
          ["Land_BagFence_01_round_green_F",12],
          ["Land_BagBunker_01_small_green_F",4],
          "Land_BagBunker_01_large_green_F"
        ]
      ] execVM "R3F_LOG\USER_FUNCT\auto_load_in_vehicle.sqf";
