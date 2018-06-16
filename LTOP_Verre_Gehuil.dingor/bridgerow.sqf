private ["_markers","_marker"];

_markers = ["bridge01","bridge02","bridge03","bridge04","bridge05","bridge06","bridge07","bridge08","bridge09","bridge10"];

{
  _marker = _x;
  {
    _x setDamage 1;
    sleep 2;
  } foreach ((getMarkerPos _marker) nearObjects ["building",75]);
} forEach _markers;

// expActiv="{ _x setDamage 1; } foreach (position Player nearObjects [""Lamps_base_F"", 9000] ); { _x setDamage 1; } foreach (position Player nearObjects [""Land_PowerPoleWooden_L_F"", 8000] );";
