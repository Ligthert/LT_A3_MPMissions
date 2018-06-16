/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: onPlayerRespawn.sqf

Author:

	Hazey

Last modified:

	2/11/2015

Description:

	Runs things on players that respawn! Duh!.
______________________________________________________*/
private ["_unitType"];

_unitType = typeOf (vehicle player);

player enableFatigue false;
