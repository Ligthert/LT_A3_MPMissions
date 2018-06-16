/*



*/

_start		= _this select 0;
_finish		= _this select 1;

_distance	=  _start distance  _finish;
_angle		= [_start,_finish] call BIS_fnc_dirTo;

_obj_distance = 5.7; // Assumption
_obj_type = "Land_HBarrier_5_F";

// Being the lazy fuck I am I am going to use the non-mathemathical way
sl_fnc_newPos = {
	private["_pos","_dir","_dist","_wx","_wy"];
	_pos	= _this select 0;
	_dir	= _this select 1;
	_dist	= _this select 2;
	_wx = (_pos select 0) + (_dist * (sin _dir));
	_wy = (_pos select 1) + (_dist * (cos _dir));
	[_wx,_wy]
};

// Enter: The mainloop!
_i = 0;
_last_pos = _start;
while {_i < _distance } do {
	_new_pos = [_last_pos,_angle,_obj_distance] call sl_fnc_newPos;
	_obj = _obj_type createVehicle _finish;
	_obj setPos _new_pos;
	_obj setDir _angle +90;
	_last_pos = _new_pos;
	_i = _i + _obj_distance;
}