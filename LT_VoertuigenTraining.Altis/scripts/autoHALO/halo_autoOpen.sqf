if (isDedicated) exitWith {};

waitUntil { (getPos player select 2) < 150 or animationState player == "para_pilot" };

if !(animationState player == "para_pilot" and (getPos player select 2) > 100) then {
	player action ["OpenParachute", player];
};