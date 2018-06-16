_mover = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_attachpoints = _this select 3;
_atz = _attachpoints select 2;
_module = nearestObject [_mover, "Slingload_01_Base_F"];
_distance = _module distance _mover;

if (_distance <= 10) then
{
	_module attachto [_mover, [0,-7.9,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-7.6,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-7.3,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-6.7,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-6.4,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-6.1,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-5.5,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-5.2,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-4.9,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-4.6,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-4.3,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-4,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-3.7,_atz]];
	sleep 0.05;
	_module attachto [_mover, [0,-2.7,_atz]];
	sleep 0.05;
	_module attachto [_mover, _attachpoints];
	_mover addaction ["Detach", "hemtt\drop.sqf", [_module, _attachpoints]];
	_module enableRopeAttach false;
	_mover removeAction _id;
}
else
{
	hint "Must be closer to a Huron module";
	sleep 5;
	hint "";
};
